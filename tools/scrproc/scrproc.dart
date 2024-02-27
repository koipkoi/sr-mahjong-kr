import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';

Future<int> main(List<String> args) async {
  if (args.length != 3) {
    print(
      'Usage : '
      'scrproc [tbl file] [script directory] [output filename]',
    );
    return -1;
  }

  final tableFile = File(args[0]);
  if (!await tableFile.exists()) {
    print(
      'tbl 파일이 존재하지 않습니다.\n'
      '(${args[0]})',
    );
    return -1;
  }

  final txtDirectory = Directory(args[1]);
  if (!await txtDirectory.exists()) {
    print(
      '경로가 존재하지 않습니다.\n'
      '(${args[1]})',
    );
    return -1;
  }

  final generatedFile = File(args[2]);
  if (await shouldNeedUpdateScriptFiles(txtDirectory, generatedFile)) {
    await process(
      tableFile,
      generatedFile,
      txtDirectory,
    );
  } else {
    print('script의 변경사항이 없기 때문에 업데이트할 필요가 없습니다.');
  }

  return 0;
}

Future<bool> shouldNeedUpdateScriptFiles(
  Directory txtDirectory,
  File generatedFile,
) async {
  final fileMd5s = <String, String>{};
  for (final entity in await txtDirectory.list().toList()) {
    if (entity is File && entity.path.endsWith('.json')) {
      final source = await entity.readAsString();
      fileMd5s[entity.path] = md5.convert(utf8.encode(source)).toString();
    }
  }

  if (await generatedFile.exists()) {
    final generatedFileMD5s = <String, String>{};
    for (final line in await generatedFile.readAsLines()) {
      if (line.trim().startsWith(';') && line.contains(':')) {
        final file = line.split(':')[0].replaceAll(';', '').trim();
        final md5 = line.split(':')[1].trim();
        generatedFileMD5s[file] = md5;
      }
    }

    for (final key in generatedFileMD5s.keys) {
      if (!fileMd5s.containsKey(key)) {
        return true;
      }
      if (fileMd5s[key] != generatedFileMD5s[key]) {
        return true;
      }
      fileMd5s.remove(key);
    }
  } else {
    return true;
  }

  return fileMd5s.isNotEmpty;
}

Future<bool> process(
  File tableFile,
  File generatedFile,
  Directory txtDirectory,
) async {
  final jsonFiles = await txtDirectory
      .list()
      .where((e) => e is File && e.path.endsWith('.json'))
      .map((e) => e as File)
      .toList();

  final textStringBuffer = StringBuffer();
  final pointerStringBuffer = StringBuffer();

  final charmap = <String, CharmapItem>{};
  for (final line in (await tableFile.readAsLines())) {
    final trimLine = line.trim();
    if (trimLine.startsWith('0') || trimLine.startsWith('1')) {
      final parse = CharmapItem.parse(trimLine);
      charmap[parse.char] = parse;
      // continue;
    }
  }

  for (final entity in jsonFiles) {
    final source = await entity.readAsString();
    final fileMD5 = md5.convert(utf8.encode(source)).toString();
    textStringBuffer.writeln('; ${entity.path} : $fileMD5');
  }

  textStringBuffer.writeln();

  for (final entity in jsonFiles) {
    final source = await entity.readAsString();
    final json = jsonDecode(source);

    final textByteBuffer = Uint8List(1024 * 10);
    var textByteBufferIndex = 0;

    for (final item in json) {
      try {
        final pointer = (item['pointer'] as String).substring(2);
        final pointerLabel = 'script_$pointer';

        // 포인터 입력
        pointerStringBuffer.writeln('.org 0x$pointer :: .dw $pointerLabel');

        // 텍스트 변환 -> 데이터 입력
        textStringBuffer.write('$pointerLabel: .db ');

        for (var scriptIndex = 0;
            scriptIndex < item['scripts'].length;
            scriptIndex++) {
          final script = item['scripts'][scriptIndex];
          final scriptStr = (script as String).trim();
          if (scriptStr.isEmpty) {
            continue;
          }

          for (var i = 0; i < scriptStr.length;) {
            var seek = 0;

            for (var j = 0; j < 32; j++) {
              seek++;

              if (i + j >= scriptStr.length) {
                print(
                  '변환할 수 없습니다.\n'
                  '항목: ${item}\n'
                  '파일 경로: ${entity.path}\n'
                  'cause: 없는 문자를 사용했거나 문자 형식이 잘못되었습니다.'
                  '없는 문자는 ${tableFile.path}에 추가해주세요.',
                );
                return false;
              }

              final sub = scriptStr.substringN(i, j + 1);

              // 제어코드
              if (sub.startsWith('{') && sub.endsWith('}')) {
                var trim = sub.substringN(1, sub.length - 2).trim();
                while (trim.contains('  ') || trim.contains('\t')) {
                  trim = trim.replaceAll('\t', ' ').replaceAll('  ', ' ');
                }

                final parse = trim.split(' ');
                if (parse.length == 0 ||
                    (parse.length >= 1 && !charmap.containsKey(parse[0]))) {
                  print(
                    '변환할 수 없습니다.\n'
                    '항목: ${item}\n'
                    '파일 경로: ${entity.path}\n'
                    'cause: 제어문자가 잘못되었습니다. ($sub)',
                  );
                  return false;
                }

                final id = charmap[parse[0]]!.id;
                final idByteCount = id.getNumOfByte();
                for (var b = 0; b < idByteCount; b++) {
                  final bits = ((idByteCount - b - 1) * 8);
                  final maskBits = 0xff << bits;
                  final newValue = (maskBits & id) >> bits;
                  textByteBuffer[textByteBufferIndex++] = newValue;
                }

                for (var n = 0; n < charmap[parse[0]]!.count; n++) {
                  final v = int.parse(parse[1 + n]);
                  final idByteCount = charmap[parse[0]]!.argBits[n] ~/ 8;
                  for (var b = 0; b < idByteCount; b++) {
                    final bits = ((idByteCount - b - 1) * 8);
                    final maskBits = 0xff << bits;
                    final newValue = (maskBits & v) >> bits;
                    textByteBuffer[textByteBufferIndex++] = newValue;
                  }
                }

                break;
              }

              // 일반 문자
              if (charmap.containsKey(sub)) {
                final id = charmap[sub]!.id;
                final idByteCount = id.getNumOfByte();
                for (var b = 0; b < idByteCount; b++) {
                  final bits = ((idByteCount - b - 1) * 8);
                  final maskBits = 0xff << bits;
                  final newValue = (maskBits & id) >> bits;
                  textByteBuffer[textByteBufferIndex++] = newValue;
                }
                break;
              }
            }

            i += seek;
          }
        }

        for (var j = 0; j < textByteBufferIndex % 4; j++) {
          textByteBuffer[textByteBufferIndex++] = 0;
        }

        for (var j = 0; j < textByteBufferIndex; j++) {
          final v = textByteBuffer[j];
          textStringBuffer.write('0x${v.toRadixString(16).padLeft(2, '0')}');
          if (j < textByteBufferIndex - 1) {
            textStringBuffer.write(',');
          }
        }
        textByteBufferIndex = 0;

        textStringBuffer.write('\n');
      } catch (e) {
        print(
          '변환할 수 없습니다.\n'
          '항목: ${item}\n'
          '파일 경로: ${entity.path}\n'
          'cause: $e',
        );
        return false;
      }
    }
  }

  await generatedFile.writeAsString(
    '$textStringBuffer'
    '\n'
    '$pointerStringBuffer',
  );

  return true;
}

class CharmapItem {
  static List<String> _kDefaultArgs = List.generate(16, (_) => '0');

  final int id;
  final String char;

  final int count;
  final List<int> argBits;

  CharmapItem._({
    required this.id,
    required this.char,
    required this.count,
    required this.argBits,
  });

  factory CharmapItem.parse(String str) {
    final parse = _parse(str);

    if (parse[0] == '0') {
      return CharmapItem._(
        id: int.parse(parse[1], radix: 16),
        char: parse[2],
        count: 0,
        argBits: [],
      );
    }

    final argCount = int.parse(parse[3]);
    return CharmapItem._(
      id: int.parse(parse[1], radix: 16),
      char: parse[2],
      count: argCount,
      argBits: List.generate(argCount, (index) => int.parse(parse[index + 4])),
    );
  }

  static List<String> _parse(String str) {
    final List<String> elements = str.split(',').map((e) {
      final trimElement = e.trim();
      if (trimElement.startsWith('"')) {
        // "abcd" -> abcd
        return trimElement.substring(1, 1 + trimElement.length - 2);
      }
      return trimElement;
    }).toList();

    // 기본값 채우기
    if (elements.length < _kDefaultArgs.length) {
      elements.addAll(_kDefaultArgs.sublist(elements.length));
    }

    return elements;
  }
}

extension StringExt on String {
  String substringN(int start, int length) {
    return this.substring(start, start + length);
  }
}

extension IntExt on int {
  int getNumOfByte() {
    if (this == 0) {
      return 1;
    }
    var v = this;
    var count = 0;
    while (v != 0) {
      v >>= 1;
      count++;
    }
    return (count + 7) ~/ 8;
  }
}
