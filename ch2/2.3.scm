;;; The code in this file may use the function defined in the previous solution
;;; The rectangle is defined by its left-bottom corner and its length and width
(define (make-rectangle lbc-x lbc-y length width)
  (cons (make-point lbc-x lbc-y)
	(make-point (+ lbc-x length)
		    (+ lbc-y width))))

(define (lb-rectangle rectangle)
  (car rectangle))

(define (tr-rectangle rectangle)
  (cdr rectangle))

(define (rectangle-length rectangle)
  (- (x-point (tr-rectangle rectangle))
     (x-point (lb-rectangle rectangle))))

(define (rectangle-width rectangle)
  (- (y-point (tr-rectangle rectangle))
     (y-point (lb-rectangle rectangle))))
;;; The definition of the function for computing the girth of a rectangle.
(define (rectangle-girth rectangle)
  (* 2 (+ (rectangle-length rectangle)
	  (rectangle-width rectangle))))
;;; The definition of the function for computing the area of a rectangle.
(define (rectangle-area rectangle)
  (* (rectangle-length rectangle)
     (rectangle-width rectangle)))