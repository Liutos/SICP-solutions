(define (cons a b)
  (* (expt 2 a)
     (expt 3 b)))

(define (helper n cnt d)
  (if (not (= (remainder n d) 0))
      cnt
      (helper (/ n d) (+ 1 cnt))))

(define (car c)
  (helper c 0 2))

(define (cdr c)
  (helper c 0 3))