;Q1
(+ (* 1 1) (* 2 2) (* 3 3) (* 4 4))

(let ((a 2) (b 5) (c (- 3)))
	(define d (- (* b b) (* 4 a c)))
	(define sol1 (/(- (- b) (sqrt d)) (* 2 a)))
	(define sol2 (/(+ (- b) (sqrt d)) (* 2 a)))
	(values sol1 sol2))

(define pi 3.14159)

(+ (* (sin (/ pi 4)) (cos (/ pi 3))) (* (cos (/ pi 4)) (sin (/ pi 3))))

;Q2
(define myFavorite 42)

(let ((x 1) (y 2))
  (+ x y))

(let ((x 3) (y 4))
  (+ (* (sin (/ pi y)) (cos (/ pi x))) (* (cos (/ pi y)) (sin (/ pi x)))))

;Q3
((lambda (x y)
  (+ (* (sin (/ pi y)) (cos (/ pi x))) (* (cos (/ pi y)) (sin (/ pi x))))) 3 4)

(define foo (lambda (x y) (+ x y)))

foo 1 2

;Q4
(define quadratic (lambda (a b c)
	(define d (- (* b b) (* 4 a c)))
	(define sol1 (/(- (- b) (sqrt d)) (* 2 a)))
	(define sol2 (/(+ (- b) (sqrt d)) (* 2 a)))
	(values sol1 sol2)))

;Q5
(define (halfTrig theta) 
	(/ (* 2 (let ((x theta)) (tan (/ x 2)))) 
	 (+ 1 (let ((y (let ((x theta)) (tan (/ x 2))))) (* y y)))))
