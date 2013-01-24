(define (mul-stream s1 s2)
  (stream-map * s1 s2))

(define factorials (cons-stream 1
				(mul-stream (stream-cdr integers)
					    factorials)))