@chcp 65001
@echo off

if not exist "baserom.gba" (
  echo 'baserom.gba' 파일을 찾을 수 없습니다. 해당 파일을 프로젝트 폴더에 저장해주십시오.
  pause
  goto exit
)

tools\armips.exe "asm\main.asm"
pause

:exit
exit
