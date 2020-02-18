#lang scheme
(define (last list)
(cond
((null? (cdr list)) (car list))
((last(cdr list)))))
(last'(23 45 76(34 35)))