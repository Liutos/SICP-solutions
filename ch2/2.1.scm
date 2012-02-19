(define (gcd a b)
  (if (= 0 b)
      a
      (gcd b (remainder a b))))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (make-rat n d)
  (let ((g (gcd n d)))
    (if (> (* n d) 0)
	(cons (abs (/ n g)) (abs (/ d g)))
	(if (= (* n d) 0)
	    (cons 0 0)
	    (cons (- (abs (/ n g)))
		  (abs (/ d g)))))))