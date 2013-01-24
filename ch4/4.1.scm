;;; 总是从左到右求值其运算对象
(define (list-of-values exps env)
  (if (no-operands? exps)
      '()
      (let ((value (eval (first-operand exps) env)))
        (cons value (list-of-values (rest-operands exps) env)))))

;;; 总是从右到左求值其运算对象
(define (list-of-values exps env)
  (if (no-operands? exps)
      '()
      (let ((value (list-of-values (rest-operands exps) env)))
        (cons (eval (first-operand exps) env) value))))
