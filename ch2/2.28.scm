(define (fringe tree)
  (if (null? tree)
      '()
      (let ((head (car tree)))
	(if (list? head)
	    (append (fringe head) (fringe (cdr tree)))
	    (append (list head) (fringe (cdr tree)))))))