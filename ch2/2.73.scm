(define (deriv exp var)
  (cond ((number? exp) 0)
	((variable? exp) (if (same-variable? exp var) 1 0))
	(else ((get 'deriv (operator exp)) (operands exp)
	       var))))

(define (operator exp) (car exp))

(define (operands exp) (cdr exp))
;;; b
(define (deriv-sum exp var)
  (make-sum (deriv (addend exp) var)
	    (deriv (augend exp) var)))

(put 'deriv '(sum) deriv-sum)

(define (deriv-product exp var)
  (make-sum
   (make-product (multiplier exp)
		 (deriv (multiplicand exp) var))
   (make-product (deriv (multiplier exp) var)
		 (multiplicand exp))))

(put 'deriv '(product) deriv-product)