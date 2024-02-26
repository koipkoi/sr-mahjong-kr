font_address_hack:
  ldr r1, =0x11A0
  cmp r0, r1
  bge @@korean_font

@@default_font:
  ldr r3, =0x02031EE0
  ldrb r2, [r5, 5]
  lsl r2, 2
  add r2, r3
  mov r1, 0x1A
  mul r1, r0
  ldr r0, [r2, 0]
  add r0, r1
  add r7, r0, 2
  b @@return

@@korean_font:
  ldr r1, =0x11A0
  sub r0, r0, r1
  ldr r7, =korean_font_gfx
  mov r1, 0x18
  mul r1, r0
  add r7, r1
  add r7, 2

@@return:
  ldr r1, =font_address_resume
  mov r15, r1
  .pool

font_width_add_0_hack:
  ldr r7, =0xA59F
  cmp r4, r7
  bge @@half_size

@@full_size:
  mov r0, 0xC
  add r8, r0
  b @@return

@@half_size:
  mov r0, 0x8
  add r8, r0

@@return:
  ldr r1, =font_width_add_0_resume
  mov r15, r1
  .pool

font_width_add_1_hack:
  ldr r0, [r6, 0x28]
  ldr r4, =0xA59F
  cmp r5, r4
  bge @@half_size

@@full_size:
  add r0, 0xC
  b @@return

@@half_size:
  add r0, 0x8

@@return:
  str r0, [r6, 0x28]
  pop {r4, r5, r6}
  pop {r0}
  bx r0
  .pool

korean_font_gfx:
  .incbin "res/font/korean.1bpp"
