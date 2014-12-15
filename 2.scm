; (define (fib-even-sum bound)
;   (define (fib-iter a b sum)
;     (cond ((> b bound) sum)
;           ((= (modulo b 2) 1) (fib-iter (+ a b) a sum))
;           (else (fib-iter (+ a b) a (+ sum b)))))
;   (fib-iter 2 1 0))

; f(n) = f(n-1) + f(n-2)
; = f(n-2) + f(n-3) + f(n-2)
; = 2 * f(n-2) + f(n-3)
; = 3 f(n-3) + 2 f(n-4)
; = 3 f(n-3) + f(n-4) + f(n-5) + f(n-6) 
; = 4 f(n-3) + f(n-6)

(define (fib-even-sum bound)
  (define (fib-iter a b sum)
    (if (> b bound) 
        sum
        (fib-iter (+ (* a 4) b) a (+ sum b))))
  (fib-iter 8 2 0))

(fib-even-sum 4000000)