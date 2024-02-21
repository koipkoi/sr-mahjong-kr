.gba
.open "baserom.gba","sr-mahjong-kr.gba", 0x8000000

.include "asm/resources.asm"
.include "asm/font.asm"

.org 0x8228664
  .include "asm/resources_0.asm"
  .include "asm/resources_1.asm"
  .include "asm/resources_2.asm"

  .include "asm/font_korean.asm"

  ; 빌드 시 생성되는 파일
  .include "asm/script.g.asm"

.close
