(define (cycle-exist? x)
  (define (rec rest)
    (if (null? rest)
	#f
	(if (eq? x rest)
	    #t
	    (rec (cdr rest)))))
  (rec (cdr x)))