#lang racket
(define (f g)
  (g 2))
(f f)
#|
会报错.
将(f f)展开会得到:
(f 2)
此时再次带入(f g)得到
(2 2)
此时解释器试着讲"2"当做函数来调用 就会报错
|#
