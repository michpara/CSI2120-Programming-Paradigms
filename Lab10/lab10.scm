;Q1
(cons '3 '(4))
(cons '1 '(2 3))
(cons 'a '((b c))
(cons '1 ())
(cons '2 '((3 (4))))

;Q2
(define L '(1 2 3 4 5)) 

;Q3
(define (range i k)
	(if (> i k)
	      '()
	      (cons i (range (+ i 1) k))))

;Q4
(define (numToList num)
  (if (< num 10)
      (list num)
      (append (numToList (floor (/ num 10)))
              (list (- num (* 10 (floor (/ num 10))))))))

(define (sosd num)
  (define (aux numList)
    (if (null? numList)
      0
    (+ (expt (car numList) 2) (aux (cdr numList)))))
  (aux (numToList num)))

;Q5
(define (drop l k)
  (aux l k 1)
)

(define (aux l k c)
  (cond
  ((null? l) '())
  ((= c k) (aux (cdr l) k 1))
  ((cons (car l) (aux (cdr l) k (+ 1 c)))))
)

;Quiz
(define (Q l)
  (cond
  ((null? l) '())
  ((list? (car l)) (cons (sum (car l)) (Q (cdr l))))
  ((cons (car l) (Q (cdr l)))))
)

(define (sum elemList)
  (if
    (null? elemList)
    0
    (+ (car elemList) (sum (cdr elemList)))
  )
)