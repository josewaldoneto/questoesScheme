#lang scheme

(define (inserir valor arvore)
  (if (null? arvore)
      (cons valor (cons '() '()))
      (let ((no (car arvore))
            (esquerda (car (cdr arvore)))
            (direita (cdr (cdr arvore))))
        (if (< valor no)
            (cons no (cons (inserir valor esquerda) direita))
            (cons no (cons esquerda (inserir valor direita)))))))

(define (buscar valor arvore)
  (if (null? arvore)
      #f
      (let ((no (car arvore))
            (esquerda (car (cdr arvore)))
            (direita (cdr (cdr arvore))))
        (cond ((= valor no) #t)
              ((< valor no) (buscar valor esquerda))
              (else (buscar valor direita))))))