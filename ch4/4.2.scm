;;; a) 将有关过程应用的子句安排在有关赋值的子句之前，会导致求值器将不应该求值的子表达式也一并进行
;;; 求值，例如(define x 3)中符号x会被求值而不是保留为符号类型的数据x。

;;; b) 可以通过修改application?过程的定义来达到目的，修改后相应的代码如下
(define (application? exp) (tagged-list? exp 'call))
(define (operator exp) (cadr exp))      ;第二个元素
(define (operands exp) (cddr exp))      ;从第三个元素开始的所有元素
;;; no-operands?、first-operand和rest-operands不需要修改
