; build:
; nasm -f elf32 calc.asm -o calc.o
; gcc -m32 calc.o -o calc

extern printf
extern scanf

section .data
    fmt_in_num   db "%lf", 0
    fmt_in_op    db " %c", 0
    fmt_out_res  db "Result: %lf", 10, 0
    fmt_div_zero db "Error: division by zero!", 10, 0
    fmt_ask_a    db "Enter first number: ", 0
    fmt_ask_b    db "Enter second number: ", 0
    fmt_ask_op   db "Enter operator (+ - * /): ", 0

section .bss
    a   resq 1
    b   resq 1
    op  resb 1
    res resq 1

section .text
    global main

main:
    ; print "Enter first number: "
    push fmt_ask_a
    call printf
    add esp, 4

    ; scanf("%lf", &a)
    push a
    push fmt_in_num
    call scanf
    add esp, 8

    ; print "Enter second number: "
    push fmt_ask_b
    call printf
    add esp, 4

    ; scanf("%lf", &b)
    push b
    push fmt_in_num
    call scanf
    add esp, 8

    ; print "Enter operator (+ - * /): "
    push fmt_ask_op
    call printf
    add esp, 4

    ; scanf(" %c", &op)
    push op
    push fmt_in_op
    call scanf
    add esp, 8

    ; load op
    movzx eax, byte [op]

    ; compare operator
    cmp eax, '+'
    je do_add
    cmp eax, '-'
    je do_sub
    cmp eax, '*'
    je do_mul
    cmp eax, '/'
    je do_div
    jmp end        ; unknown op -> just exit

do_add:
    fld qword [a]
    fadd qword [b]
    fstp qword [res]
    jmp print_res

do_sub:
    fld qword [a]
    fsub qword [b]
    fstp qword [res]
    jmp print_res

do_mul:
    fld qword [a]
    fmul qword [b]
    fstp qword [res]
    jmp print_res

do_div:
    ; check b == 0.0
    fld qword [b]
    fldz
    fcomip st1, st0
    fstp st0
    jne do_real_div

    ; division by zero
    push fmt_div_zero
    call printf
    add esp, 4
    jmp end

do_real_div:
    fld qword [a]
    fdiv qword [b]
    fstp qword [res]
    jmp print_res

print_res:
    push dword [res+4]
    push dword [res]
    push fmt_out_res
    call printf
    add esp, 12
    jmp end

end:
    xor eax, eax
    ret
