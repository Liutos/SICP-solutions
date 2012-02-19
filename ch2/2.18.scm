(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))
;;; The recursive but unefficient version definition of function REVERSE.
(define (reverse lst)
  (if (and lst (null? (cdr lst)))
      lst
      (append (reverse (cdr lst)) (list (car lst)))))
;;; The iterative and more efficient version of function REVERSE.
(define (reverse lst)
  (define (helper lst rev)
    (if (null? lst)
	rev
	(helper (cdr lst) (cons (car lst) rev))))
  (helper lst '()))