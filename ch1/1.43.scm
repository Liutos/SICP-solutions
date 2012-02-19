(define (repeated f n)
  (if (= 1 n)
      f
      (lambda (x)
	(f ((repeated f (- n 1)) x)))))
;;; The version used the function compose defined in the previous exercise.
(define (repeated f n)
  (if (= 1 n)
      f
      (compose f (repeated f (- n 1)))))