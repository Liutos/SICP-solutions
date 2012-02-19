;;; Referenced the solution of Qiao on GitHub
(define (deep-reverse tree)
  (define (helper tre acc)
    (if (null? tre)
	acc
	(if (and (car tre) (not (pair? (car tre))))	;It's atom
	    (helper (cdr tre) (append (list (car tre)) acc))
	    (helper (cdr tre) (append (list (deep-reverse (car tre)))
				      acc)))))
  (helper tree '()))