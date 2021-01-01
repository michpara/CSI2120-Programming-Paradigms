;Q1 
(define (loop LA LB)
  (if (or (null? LA) (null? LB))
      '()
      (cons (abs (- (car LA) (car LB))) (loop (cdr LA) (cdr LB)))))


(define (absDiff LA LB) 
  (cond 
   ((not (= (length LA) (length LB))) "List have different length")
   (#t (loop LA LB))))

;Q2
(define (absDiffA L1 L2)
  (let loop ((LA L1)
                  (LB L2))
         (if (and (null? LA) (null? LB))
             '()
       (cond
        ((null? LA)
         (cons (abs (car LB)) (loop (cdr LB) '())))
        ((null? LB)
         (cons (abs (car LA)) (loop (cdr LA) '())))
        (#t (cons (abs (- (car LA) (car LB)))
      (loop (cdr LA) (cdr LB))))))))


;Q3 
(define (min-list x)
  (if (null? x)
      x
      (letrec ((min-list-aux (lambda (e l)
       (cond
        ((null? l) e)
        ((> e (car l))
          (min-list-aux (car l)(cdr l)))
        (else (min-list-aux e (cdr l)))))))
        (min-list-aux (car x)(cdr x)))))

;Q4
(letrec ((f (lambda (a b)
              (let ((b (* b b)))
                (let* ((a (* a a)) (b (- b a)))
			(if (< a b)
                                (begin (display b) (display " ") (displayln a) (f b a))
                                (list a b))))))) (f 1 2))