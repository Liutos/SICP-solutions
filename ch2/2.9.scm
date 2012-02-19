;;; Assume that here's two intervals (a, b) and (c, d). Their width is 
;;; (b - a) / 2 and (d - c) / 2. And the interval of their sum if (a+c, b+d) 
;;; whose width is ((b+d) - (a+c)) / 2 = (b - a) / 2 + (d - c) / 2, i.e. the 
;;; sum of the width of the two intervals. And the subtraction is similar, like 
;;; the expression following
;; width((a, b) - (c, d)) = width((c-a, d-b)) = ((d-b) - (c-a)) / 2 = ((d - c) - (b - a)) / 2 = width((c, d)) - width((a, b))