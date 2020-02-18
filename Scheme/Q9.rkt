#lang scheme
(define re '())
(define (evenT low high)
    (cond ((>= low high) re)
    ((even? low)(set! re (append re (list low)))(evenT (+ 1 low) high))
    (else (evenT (+ 1 low) high))))

(evenT 1 10)