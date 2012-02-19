;;; If the interpreter is at apply order, this function call would never 
;;; terminated. If the interpreter is at regular order, the function returns 
;;; value 0. This is because the interpreter will first evaluate its arguments 
;;; so that the evaluation at second argument (p) would call itself recursively 
;;; without terminal if it's at apply order.