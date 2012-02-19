(define (even? n)
  (= (remainder n 2) 0))

(define (square x)
  (* x x))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
	((even? exp)
	 (remainder (square (expmod base (/ exp 2) m))
		    m))
	(else
	 (remainder (* base (expmod base (- exp 1) m))
		    m))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
	((divides? test-divisor n) test-divisor)
	(else (find-divisor n (+ test-divisor 1)))))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (prime? n)
  (= n (smallest-divisor n)))
;;; A number is a Carmichael number if it can pass the Fermat examination but isn't a prime number.
(define (carmichael? num)
  (define (helper test-num)
    (if (= test-num num)
	#t
	(if (= (expmod test-num num num) test-num)
	    (helper (+ 1 test-num))
	    #f)))
  (and (helper 2)
       (not (prime? num))))