;;; a
(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (car (cdr mobile)))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (car (cdr branch)))
;;; b
(define (total-weight mobile)
  (define (branch-total-weight branch)
    (let ((structure (branch-structure branch)))
      (if (pair? structure)
	  (total-weight structure)
	  structure)))
  (+ (branch-total-weight (left-branch mobile))
     (branch-total-weight (right-branch mobile))))
;;; c
;;; d
;;; We need to modify the definition of all the select functions