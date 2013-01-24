(define partial-sums (s)
  (cons-stream (stream-car s)
	       (stream-map (stream-cdr s) s)))