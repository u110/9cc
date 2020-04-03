.intel_syntax noprefix
.global main

// 5 + 20 - 4 = 21
main:
  mov rax, 5
  add rax, 20
  sub rax, 4
  ret
