;;; The function definition of DOUBLE.
(define (double f)
  (lambda (x)
    (f (f x))))
;;; The definition of function INC.
(define (inc x) (+ x 1))

(((double (double double)) inc) 5)	;21