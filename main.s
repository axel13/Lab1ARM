/* --------------------------------------------------- */
/* Axel Mazariegos, 131212                             */
/* Nombre, no. carné                                   */
/* Fecha: 02 de agosto de 2016                         */
/* main.s                                            */
/* --------------------------------------------------- */


.text
.align 2
.global main
.type main,%function

main:

  stmfd sp!, {lr}

  

final:
  @ salida correcta
  mov r0,#0
  mov r3,#0
  ldmfd sp!, {lr}
  bx lr

.data
.align 2
mensaje: .asciz "\nIngrese un numero:"
fResultado: .asciz "\nEl valor minimo es: %d"
fDecimal: .asciz "%d"
vector: .word 0,0,0,0,0,0,0,0,0,0
