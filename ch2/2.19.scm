(define (first-denomination coins)
  (car coins))

(define (except-first-denomination coins)
  (cdr coins))

(define (no-more? coins)
  (null? coins))
;;; The order of the coin-values has no effect on the value returned from function CC.