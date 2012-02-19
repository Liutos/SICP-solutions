;;; a
(define (cont-frac n d k)
  (define (helper current-index)
    (if (> current-index k)
	(d k)
	(/ (n current-index)
	   (+ (d current-index)
	      (helper (+ 1 current-index))))))
  (helper 1))
;;; b. I can't promise that this is a correct implementation of iterative version of function CONT-FRAC.
(define (cont-frac n d k)
  (define (iter cur acc)
    (if (<= cur 0)
	acc
	(iter (- cur 1)
	      (/ (n (- k cur))
		 (+ (d (- k cur))
		    acc)))))
  (iter k 0))