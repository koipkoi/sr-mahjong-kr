import 'dart:io';
import 'dart:convert';
import 'package:crypto/crypto.dart';

Future<int> main(List<String> args) async {
  if (args.length != 3) {
    print(
      'Usage : '
      'textproc [tbl file] [script directory] [output filename]',
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
  if (await incremental(txtDirectory, generatedFile)) {
    await process(
      tableFile,
      generatedFile,
      txtDirectory,
    );
  } else {
    print('${args[2]}은 최신입니다.');
  }

  return 0;
}

Future<bool> incremental(
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
    final generatedFileMd5s = <String, String>{};
    for (final line in await generatedFile.readAsLines()) {
      if (line.trim().startsWith(';') && line.contains(':')) {
        final file = line.split(':')[0].replaceAll(';', '').trim();
        final md5 = line.split(':')[1].trim();
        generatedFileMd5s[file] = md5;
      }
    }

    for (final key in generatedFileMd5s.keys) {
      if (!fileMd5s.containsKey(key)) {
        return true;
      }
      if (fileMd5s[key] != generatedFileMd5s[key]) {
        return true;
      }
    }
  } else {
    return true;
  }

  return false;
}

Future<bool> process(
  File tableFile,
  File generatedFile,
  Directory txtDirectory,
) async {
  // 테이블 로딩
  final characterToValueTable = <String, int>{};
  for (final line in await tableFile.readAsLines()) {
    if (line.isEmpty || !line.contains('=')) {
      continue;
    }

    final keyValue = line.split('=');
    final value = int.parse(keyValue[0], radix: 16);
    final character = keyValue[1];
    characterToValueTable[character] = value;
  }

  final fileMd5s = <String, String>{};
  for (final entity in await txtDirectory.list().toList()) {
    if (entity is File && entity.path.endsWith('.json')) {
      final source = await entity.readAsString();
      fileMd5s[entity.path] = md5.convert(utf8.encode(source)).toString();
    }
  }

  // 소스 시작 및 포인터 입력
  final pointerStringBuffer = StringBuffer();
  pointerStringBuffer.writeln('; 포인터 입력\n');

  // 텍스트 시작 지점 입력
  final textStringBuffer = StringBuffer();
  for (final item in fileMd5s.keys) {
    textStringBuffer.writeln('; $item : ${fileMd5s[item]}');
  }
  textStringBuffer.writeln('');
  textStringBuffer.writeln('; 텍스트 입력\n');

  final sortedCharacters = characterToValueTable.keys.toList();
  sortedCharacters.sort((a, b) => a.length > b.length ? -1 : 1);

  for (final entity in await txtDirectory.list().toList()) {
    if (entity is File && entity.path.endsWith('.json')) {
      final source = await entity.readAsString();
      final json = jsonDecode(source);

      for (final item in json) {
        try {
          final buffer = <int>[];
          for (final script in item['scripts']) {
            var newText = script;
            for (final c in sortedCharacters) {
              newText = newText.replaceAll(
                c,
                characterToValueTable[c]!.toRadixString(16).padLeft(2, '0'),
              );
            }

            for (var i = 0; i < newText.length; i += 2) {
              final s = '${newText[i]}${newText[i + 1]}';
              buffer.add(int.parse(s, radix: 16));
            }
          }

          final pointer = (item['pointer'] as String).substring(2);
          final pointerLabel = 'script_$pointer';

          // 포인터 입력
          pointerStringBuffer.writeln('.org 0x$pointer :: .dw $pointerLabel');

          // 텍스트 입력
          textStringBuffer.write('$pointerLabel: .db ');
          for (var j = 0; j < buffer.length; j++) {
            final b = buffer[j];
            textStringBuffer.write('0x${b.toRadixString(16).padLeft(2, '0')}');
            if (j < buffer.length - 1) {
              textStringBuffer.write(',');
            }
          }
          textStringBuffer.write('\n');
        } catch (_) {
          print(
            '변환할 수 없습니다.'
            '(${entity.path}, $item)',
          );
          return false;
        }
      }
    }
  }

  await generatedFile.writeAsString(
    '$textStringBuffer'
    '\n\n'
    '$pointerStringBuffer',
  );

  return true;
}
