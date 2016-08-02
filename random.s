/* --------------------------------------------------- */
/* Axel Mazariegos, 131212                             */
/* Nombre, no. carné                                   */
/* Fecha: 02 de agosto de 2016                         */
/* random.s                                            */
/* --------------------------------------------------- */

.text
.align		2
.global lfsr
.global min
.global max
.global avg
.global norm
.global printVec

@ subrutina lfsr
@ parametros: r0 = dirección del vector
@             r1 = el tamaño del vector
@             r2 = semilla para el LFSR
lfsr:

  mov pc,lr

@ subrutina min
@ parametros: r0 = dirección del vector
@             r1 = el tamaño del vector
@ retorno: s0 = el valor minimo (float)
min:
  mov r8,r0
  vector .req r8
  lastmin .req s4
  counter .req r5

  mov counter, r1
  ldr lastmin, [vector]

return:
  sub counter, #1
  cmp counter,#0
  beq end

  vldr s3,[vector,#4]!
  cmp lastmin, s3
  blt return
  vmov lastmin, s3
  b return

end:
  vmov s0,lastmin
  .unreq lastmin
  .unreq arreglo
  .unreq contador
  mov pc,lr


@ subrutina max
@ parametros: r0 = dirección del vector
@             r1 = el tamaño del vector
@ retorno: s0 = el valor maximo (float)
max:
  mov r8,r0
  vector .req r8
  lastmax .req s4
  counter .req r5

  mov counter, r1
  ldr lastmax, [vector]

return:
  sub counter, #1
  cmp counter,#0
  beq end

  vldr s3,[vector,#4]!
  cmp lastmax, s3
  bgt return
  vmov lastmax, s3
  b return

end:
  vmov s0,lastmax
  .unreq lastmax
  .unreq arreglo
  .unreq contador
  mov pc,lr

  mov pc,lr

@ subrutina avg
@ parametros: r0 = dirección del vector
@             r1 = el tamaño del vector
@ retorno: r0 = el valor promedio (float)
avg:

  mov pc,lr

@ subrutina norm
@ parametros: r0 = dirección del vector
@             r1 = el tamaño del vector
@             r2 = el valor minimo
@             r3 = el valor maximo
norm:

  mov pc,lr

@ subrutina printVec
@ imprime los valores de un vector de floats
@ parametros: r0 = dirección del vector
@             r1 = el tamaño del vector
printVec:

  mov pc,lr
