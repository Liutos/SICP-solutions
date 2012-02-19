(define dx 0.00001)

(define (smooth f)
  (lambda (x)
    (/ (+ (f (- x dx))
	  (f x)
	  (f (+ x dx))) 3)))
;;; If you want to get the nth-smoothed version of a function f which call with one argument, write the code like following. Here used the function REPEATED defined in the previous solution.
((repeated smooth n) f)