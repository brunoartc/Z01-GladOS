; 0 - PUSH constant 111
leaw $SP,%A
movw (%A),%A
incw %A
movw %A,%D
leaw $SP,%A
movw %D,(%A)
leaw $111,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
decw %A
movw %D,(%A)
; 1 - PUSH constant 333
leaw $SP,%A
movw (%A),%A
incw %A
movw %A,%D
leaw $SP,%A
movw %D,(%A)
leaw $333,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
decw %A
movw %D,(%A)
; 2 - PUSH constant 888
leaw $SP,%A
movw (%A),%A
incw %A
movw %A,%D
leaw $SP,%A
movw %D,(%A)
leaw $888,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
decw %A
movw %D,(%A)
; 3 - POP static 8
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%S
leaw $STATIC,%A
movw (%A),%A
movw %A,%D
leaw $8,%A
addw %A,%D,%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%A
decw %A
movw %A,%D
leaw $SP,%A
movw %D,(%A)
; 4 - POP static 3
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%S
leaw $STATIC,%A
movw (%A),%A
movw %A,%D
leaw $3,%A
addw %A,%D,%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%A
decw %A
movw %A,%D
leaw $SP,%A
movw %D,(%A)
; 5 - POP static 1
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%S
leaw $STATIC,%A
movw (%A),%A
movw %A,%D
leaw $1,%A
addw %A,%D,%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%A
decw %A
movw %A,%D
leaw $SP,%A
movw %D,(%A)
; 6 - PUSH static 3
leaw $STATIC,%A
movw (%A),%A
movw %A,%D
leaw $3,%A
addw %A,%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
incw %A
movw %A,%S
leaw $SP,%A
movw %S,(%A)
; 7 - PUSH static 1
leaw $STATIC,%A
movw (%A),%A
movw %A,%D
leaw $1,%A
addw %A,%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
incw %A
movw %A,%S
leaw $SP,%A
movw %S,(%A)
; 8 - SUB
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%S
decw %A
movw (%A),%D
movw %D,%A
subw %A, %S, %S
leaw $SP,%A
movw (%A),%A
decw %A
movw %A,%D
decw %A
movw %S,(%A)
leaw $SP,%A
movw %D,(%A)
; 9 - PUSH static 8
leaw $STATIC,%A
movw (%A),%A
movw %A,%D
leaw $8,%A
addw %A,%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
incw %A
movw %A,%S
leaw $SP,%A
movw %S,(%A)
; 10 - ADD
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%S
decw %A
movw (%A),%D
movw %D,%A
addw %A, %S, %S
leaw $SP,%A
movw (%A),%A
decw %A
movw %A,%D
decw %A
movw %S,(%A)
leaw $SP,%A
movw %D,(%A)
; End
