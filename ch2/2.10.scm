(define (div-interval x y)
  (if (< (* (lower-bound y) (upper-bound y)) 0)
      (error "Divided by interval includes zero -- DIV-INTERVAL")
      (mul-interval x
		    (make-interval (/ 1.0 (upper-bound y))
				   (/ 1.0 (lower-bound y))))))