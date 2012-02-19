(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
  (map (lambda (r)
	 (dot-product r v)) m))

(define (transpose mat)
  (accumulate-n cons '() mat))