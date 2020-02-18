#lang scheme
(define re '())
(define (fib-squares n)
  (cond
    ((< n 0) re)
    (else (set! re (append (list (expt(fib n) 2)) re)) (fib-squares (- n 1)))
    ))
(define (fib n)
  (if (<= n 1) n
      (+ (fib (- n 1)) (fib (- n 2))))
  )
(fib-squares 10)