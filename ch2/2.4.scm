;;; Cons is defined as a function who return a procedure call with one argument 
;;; and then apply it to the parameter got from the function outer, i.e. 
;;; function cons. When we evaluate the form `(car z)' and z is the value of 
;;; the function call `(cons x y)', a function requires two parameters will 
;;; pass to the procedure stored in variable z. This function with two 
;;; parameters will merely return its first parameter which is the first 
;;; component stored in the procedure stored in the variable z. In a word, the 
;;; expression `(car z)' return the car of a cons-cell.
(define (cdr z)
  (z (lambda (p q) q)))

;; (cdr z)
;; (z (lambda (p q) q))
;; ((lambda (m) (m x y)) (lambda (p q) q))
;; ((lambda (p q) q) x y)
;; (y)