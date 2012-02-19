(define (expt-iter b n prod)
  (if (= 0 n)
      prod
      (if (even? n)
	  (expt-iter (* b b) (/ n 2) prod)
	  (expt-iter b (- n 1) (* prod b)))))

(define (fast-expt b n)
  (expt-iter b n 1))