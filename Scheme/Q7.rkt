#lang scheme
(define (subsets lst)
  (cond
    ((empty? lst) (list empty))
    (else (com (first lst) (subsets (rest lst))))
    )
  )

(define (com a b)
  (cond
    ((empty? b) empty)
    (else (cons(cons a (first b)) (cons (first b) (com a (rest b)))))))

(subsets '(a b c d))
