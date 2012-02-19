(define (addend s) (cadr s))

(define (augend s)
  (cond ((= (length s) 3) (caddr s))
	((= (length s) 4) (cadddr s))
	(else (cons '+ (cdddr s)))))

(define (multiplier p) (cadr p))

(define (multiplicand p)
  (cond ((= (length p) 3) (caddr p))
	((= (length p) 4) (cadddr p))
	(else (cons '* (cdddr p)))))