(define tolerance 0.00001)

(define (my-fixed-point f first-guess)
  (define (close-enough? x y)
    (< (abs (- x y)) tolerance))
  (define (try guess)
    (display guess)
    (newline)
    (let ((next (f guess)))
      (if (close-enough? guess next)
	  next
	  (try next))))
  (try first-guess))
;;; The simple version runs 34 times.
(define (find-root)
  (my-fixed-point (lambda (x) (/ (log 1000) (log x)))
		  2.0))
;;; The average version runs 9 times.
(define (find-root)
  (my-fixed-point (lambda (x) (/ (+ x (/ (log 1000) (log x))) 2))
		  2.0))