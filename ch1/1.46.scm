(define (iterative-improve good? improve)
  (lambda (guess)
    (if (good? guess)
	guess
	((iterative-improve good? improve) (improve guess)))))