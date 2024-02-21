.org 0x8005FD4
font_address:
  ldr r1, =font_address_hack
  mov r15, r1
  .pool

.org 0x8005FE6
font_address_resume:


.org 0x8005FDC
font_width_add_0:
  ldr r7, =font_width_add_0_hack
  mov r15, r7
  .pool

.org 0x8006042
  b font_width_add_0

.org 0x8006058
  b font_width_add_0

.org 0x8006068
  b font_width_add_0

.org 0x8006072
  b font_width_add_0
  nop
  nop

.org 0x80061D8
font_width_add_0_resume:


.org 0x801229C
font_width_add_1:
  ldr r4, =font_width_add_1_hack
  mov r15, r4
  .pool
