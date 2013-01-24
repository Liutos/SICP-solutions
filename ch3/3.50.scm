(define (stream-map proc . argstreams)
  (if (stream-null? (car argstreams))
      the-empty-stream
      (cons-stream (apply proc (map force argstreams))
		   (apply stream-map
			  (cons proc (map force argstreams))))))