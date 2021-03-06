#lang racket
(define (cube x)
  (* x x x))
(define (next x)
  (+ x 1))
(define (accumulate combiner null-value term a next b)
  (if (> a b) null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))
;定义出sum-cube
(define (sum term a next b)
  (define (fn a b)
    (+ a b))
  (accumulate fn 0 term a next b))
(define (sum-cube a b)
  (sum cube a next b))
(sum-cube 1 3)
