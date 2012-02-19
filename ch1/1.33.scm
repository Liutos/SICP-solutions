;;; The definition of function FILTERED-ACCUMULATE.
(define (filtered-accumulate combiner null-value term a next b pred)
  (if (> a b)
      null-value
      (if (pred a)
	  (combiner (term a)
		    (filtered-accumulate combiner null-value term
					 (next a)
					 next b pred))
	  (filtered-accumulate combiner null-value term
			       (next a)
			       next b pred))))
;;; a
(define (sum-primes a b)
  (define (identity x) x)
  (define (inc x) (+ x 1))
  (filtered-accumulate + 0 identity a inc b prime?))
;;; b
(define (gcd-product n)
  (define (gcd a b)
    (if (= b 0)
	a
	(gcd b (remainder a b))))
  (define (gcdp i)
    (= (gcd i n) 1))
  (filtered-accumulate * 1 identity 1 inc n gcdp))