;;; 在eval中的cond中的application?子句之前，cond?子句之后增加如下的代码
...
((and? exp) (eval-and (operands exp) env))
((or? exp) (eval-or (operands exp) env))
...
;;; eval-and、eval-or以及配套设施的定义
(define (and? exp) (tagged-list? exp 'and))
(define (or? exp) (tagged-list? exp 'or))

(define (eval-and ops env)
  (if (no-operands? ops)
      #t
      (let ((value (eval (first-operand ops) env)))
        (if (true? value)
            (if (no-operands? (rest-operands ops))
                value
                (eval-and (rest-operands ops) env))
            #f))))

(define (eval-or ops env)
  (if (no-operands? ops)
      #f
      (let ((value (eval (first-operand ops) env)))
        (if (true? value)
            value
            (eval-or (rest-operands ops) env)))))
;;; 用派生表达式的方式实现and和or
;;; and的派生表达式定义方式
(define (and-clauses exp) (cdr exp))
(define (expand-and-clauses clauses)
  (if (null? clauses)
      '#t
      (let ((first (car clauses))
            (rest (cdr clauses)))
        (if (null? rest)
            first
            (make-if first
                     (expand-and-clauses rest)
                     '#f)))))
(define (and->if exp)
  (expand-and-clauses (and-clauses exp)))
;;; or的派生表达式定义方式
(define (or-clauses exp) (cdr exp))
(define (expand-or-clauses clauses)
  (if (null? clauses)
      '#f
      (let ((first (car clauses))
            (rest (cdr clauses)))
        (if (null? rest)
            first
            (make-if first
                     '#t
                     (expand-or-clauses rest))))))
(define (or->if exp)
  (expand-or-clauses (or-clauses exp)))
