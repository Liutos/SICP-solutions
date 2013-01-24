;;; 修改其中的第二个if形式的替代部分，修改后如下
...
(if (eq? (cadr first) '=>)
    `(let ((value ,(car first)))
       (if value
           (,(caddr first) value)
           ,(expand-clauses rest)))
    (make-if (cond-predicate first)
             (sequence->exp (cond-actions first))
             (expand-clauses rest)))
...
