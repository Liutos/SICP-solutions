;;; 下面的函数用于将绑定中的变量名和值分开收集起来
(define split-bindings (bindings)
  (if (null? bindings)
      (cons '() '())
      (let ((var (caar bindings))
            (val (caadr bindings))
            (rest (split-bindings (cdr bindings))))
        (cons (cons var (car rest))
              (cons val (cadr rest))))))
;;; 构造lambda表达式及其应用
(define (let->combination bindings body)
  (let ((vvs (split-bindings bindings)))
    (cons (make-lambda (car vvs) body)
          (cadr vvs))))

;;; 在eval中的cond中的cond?子句和application?子句之间添加下面的代码
(define (let? exp) (tagged-list? exp 'let))
...
((let? exp) (eval (let->combination exp) env))
...
