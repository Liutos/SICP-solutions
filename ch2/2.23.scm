(define (for-each fn lst)
  (if (null? lst)
      t
      (let ()
	(fn (car lst))
	(for-each fn (cdr lst)))))