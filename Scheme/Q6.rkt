#lang scheme
(define x 0)
(define (sum-odd-squares lst)
  (cond
    ((null? lst) x)
    ((list?(car lst))(help(car lst))(sum-odd-squares(cdr lst)))
    ((odd? (car lst)) (set! x (+ x (expt(car lst) 2))) (sum-odd-squares (cdr lst)))
    (else (sum-odd-squares (cdr lst)))
    )
  )
(define (help lst)
  (cond
    ((null? lst))
    ((list?(car lst))(help(car lst))(help (cdr lst)))
    ((odd? (car lst)) (set! x (+ x (expt(car lst) 2))) (help (cdr lst)))
    (else (help (cdr lst))))
  
  )
(sum-odd-squares '(1 2 3 4 (1(3)(3)1) (5 6)))