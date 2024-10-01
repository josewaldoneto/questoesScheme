#lang scheme

(define (compose f g)
  (lambda (x) (f (g x))))

(define (compose-all . funcs)
  (foldr compose (lambda (x) x) funcs))