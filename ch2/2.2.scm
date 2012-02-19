(define (make-segment start-segment end-segment)
  (cons start-segment end-segment))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cdr segment))

(define (make-point x y)
  (cons x y))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (midpoint-segment segment)
  (let ((p1 (start-segment segment))
	(p2 (end-segment segment)))
    (let ((x1 (x-point p1))
	  (y1 (y-point p1))
	  (x2 (x-point p2))
	  (y2 (y-point p2)))
      (make-point (/ (+ x1 x2) 2)
		  (/ (+ y1 y2) 2)))))