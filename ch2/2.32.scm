(define (subsets s)
  (if (null? s)
      (list '())
      (let ((rest (subsets (cdr s))))
	(append rest (map (lambda (lst)
			    (cons (car s) lst)) rest)))))
;;; This definition is work because the subsets of a set is the set includes 
;;; the subsets of the set remove a element and the same subsets append this 
;;; removed element