;;; For the interpreter, the expression (car ''abracadabra) is equivaient to 
;;; expression (car (quote (quote abracadabra))). The first quote prevents the 
;;; evaluation of the expression (quote abracadabra) in it. Therefore, the 
;;; argument of function car is the list (quote abracadabra) whose car is the 
;;; symbol quote