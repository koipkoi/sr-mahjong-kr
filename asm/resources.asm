.org 0x800A0D0
  .dw resources_0

.org 0x8205204
  .dw resources_0
  .dw resources_1
  .dw resources_2

.org 0x8228664
  .include "asm/resources_0.asm"
  .include "asm/resources_1.asm"
  .include "asm/resources_2.asm"

  ; 빌드 시 생성되는 파일
  .include "asm/script.g.asm"
