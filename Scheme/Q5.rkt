#lang scheme
(define (reverse l)
  (define (loop remaining result)
    (cond ((null? remaining) result)
          ((pair? (car remaining))
            (loop (cdr remaining) (cons (reverse (car remaining)) result)))
          (else (loop (cdr remaining) (cons (car remaining) result)))))
  (loop l '()))
(reverse (list 1 2 3 (list 4 5 (list 4 5 6))))