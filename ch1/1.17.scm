(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (even? x)
  (= (remainder x 2) 0))

(define (mul a b)
  (if (= b 0)
      0
      (if (even? b)
	  (mul (double a) (halve b))
	  (+ a (mul a (- b 1))))))