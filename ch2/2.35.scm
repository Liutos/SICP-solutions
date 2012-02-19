(define (count-leaves t)
  (accumulate (lambda (n sum)
		(if (pair? n)
		    (+ sum (count-leaves n))
		    (+ sum 1)))
	      0
	      (map (lambda (x) x) t)))