#lang scheme

(define fib-memo 
  (let ((cache '()))
    (define (fib n)
      (let ((cached (assoc n cache)))
        (if cached
            (cdr cached)
            (let ((result
                   (cond ((= n 0) 0)
                         ((= n 1) 1)
                         (else (+ (fib (- n 1)) (fib (- n 2)))))))
              (set! cache (cons (cons n result) cache))
              result))))
    fib))