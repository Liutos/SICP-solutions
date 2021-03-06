(define (cont-frac n d k)
  (define (helper current-index)
    (if (> current-index k)
	(d k)
	(/ (n current-index)
	   (+ (d current-index)
	      (helper (+ 1 current-index))))))
  (helper 1))

(define (tan-cf x k)
  (cont-frac (lambda (i)
	       (if (= 0 i)
		   x
		   (- (* x x))))
	     (lambda (i)
	       (+ 1.0 (* 2 i)))
	     k))