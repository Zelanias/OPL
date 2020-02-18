#lang scheme
(define (EXP-DEPTH lst)
  (depth lst 1)
 )
(define(depth lst count)
  (cond
    ((null? lst) count)
    ((not (list? (car lst))) (depth (cdr lst) count))
    (else (max (depth (car lst) (+ 1 count))
               (depth (cdr lst) count)))))
(EXP-DEPTH '(I (J) ((K) L) M(A(B(C)))))