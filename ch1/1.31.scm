;;; The regular recursive version of function PRODUCT.
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
	 (product term (next a) next b))))

(define (identity x)
  x)

(define (inc x)
  (+ x 1))
;;; The function definition of factorial
(define (factorial n)
  (product identity 1 inc n))
;;; Computing the value of PI
(define (jwpi n)
  (define (make-odd n)
    (+ (* 2 n) 1))
  (define (term n)
    (/ (* (- n 1) (+ n 1))
       (* n n)))
  (define (f n)
    (term (make-odd n)))
  (* 4 (product f 1.0 inc n)))
;;; The iterative version of function PRODUCT.
(define (product-iter f a next b)
  (define (iter a prod)
    (if (> a b)
	prod
	(iter (next a) (* prod (f a)))))
  (iter a 1))