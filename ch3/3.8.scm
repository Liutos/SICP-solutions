(define f
  (let ((v '()))
    (lambda (x)
      (if (null? v)
	  (begin (set! v x)
		 x)
	  v))))