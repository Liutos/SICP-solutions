;;; Recursive version
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
	 (* 2 (f (- n 2)))
	 (* 3 (f (- n 3))))))
;;; Iterative version
(define (f n)
  (define (helper cur pre pp cnt)
    (if (<= cnt 3)
	cur
	(helper (+ cur (* 2 pre) (* 3 pp))
		cur
		pre
		(- cnt 1))))
  (if (< n 3)
      n
      (helper 4 2 1 n)))