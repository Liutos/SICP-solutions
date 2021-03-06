(define (rand sym)
  (let ((x random-init))
    (define (dispatch s)
      (cond ((eq? 'reset s)
	     (lambda (num)
	       (set! x num)
	       x))
	    ((eq? 'generate s)
	     (set! x (rand-update x))
	     x)
	    (else (error "Unknown operator -- RAND" s))))
    dispatch))