(define (sum-multiples factors bound)
  ; Computes the sum of the multiples of a single number
  (define (sm-one factor) (sm-one-iter factor 0 0))
  (define (sm-one-iter factor start sum)
    (if (>= start bound) 
        sum
        (sm-one-iter factor (+ start factor) (+ start sum))))
  ; Computes the sum of the sum of the multiples of the given numbers, including double-counts
  (define (sum-multiples-unfiltered factors)
	  (if (null? factors)
	      0
	      (+ (sm-one (car factors)) (sum-multiples-unfiltered (cdr factors)))))
  
  (- (sum-multiples-unfiltered factors) (sm-one (apply lcm factors))))

(sum-multiples '(3 5) 1000000)