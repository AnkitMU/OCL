(declare-fun Oid (Int) Int)
(declare-fun first_name (Int) String)
(declare-fun last_name (Int) String)
(declare-fun email (Int) String)
(define-fun Person ((o Int)) Bool true)

(assert 
    (forall ((o Int)) (=> (Person o)
        (and
            (> (str.len (first_name (Oid o))) 5)
            (str.in.re (first_name (Oid o)) (re.* (re.range "a" "z")))
        )
    ))
)

(assert 
    (forall ((o Int)) (=> (Person o)
        (and
            (> (str.len (last_name (Oid o))) 5)
            (str.in.re (last_name (Oid o)) (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))))
        )
    ))
)

(assert
    (forall ((o Int)) (=> (Person o)
        (not (= (first_name (Oid o)) (last_name (Oid o))))
    ))
)

(assert
    (forall ((o Int)) (=> (Person o)
        (= (email (Oid o)) (str.++ (first_name (Oid o)) "." (last_name (Oid o)) "@mu.ie"))
    ))
)

(assert
    (forall ((o Int)) (=> (Person o)
        (str.suffixof "mu.ie" (email (Oid o)))
    ))
)

(assert (exists ((o Int)) (Person o)))

(assert (distinct 
    (first_name (Oid 1))
    (first_name (Oid 2))
    (first_name (Oid 3))
    (first_name (Oid 4))
    (first_name (Oid 5))
    (first_name (Oid 6))
    (first_name (Oid 7))
    (first_name (Oid 8))
    (first_name (Oid 9))
    (first_name (Oid 10))
    (first_name (Oid 11))
    (first_name (Oid 12))
    (first_name (Oid 13))
    (first_name (Oid 14))
    (first_name (Oid 15))
    (last_name (Oid 1))
    (last_name (Oid 2))
    (last_name (Oid 3))
    (last_name (Oid 4))
    (last_name (Oid 5))
    (last_name (Oid 6))
    (last_name (Oid 7))
    (last_name (Oid 8))
    (last_name (Oid 9))
    (last_name (Oid 10))
    (last_name (Oid 11))
    (last_name (Oid 12))
    (last_name (Oid 13))
    (last_name (Oid 14))
    (last_name (Oid 15))
))

(check-sat)
(get-value ((first_name (Oid 1))(last_name (Oid 1))(email (Oid 1))))
(get-value ((first_name (Oid 2))(last_name (Oid 2))(email (Oid 2))))
(get-value ((first_name (Oid 3))(last_name (Oid 3))(email (Oid 3))))
(get-value ((first_name (Oid 4))(last_name (Oid 4))(email (Oid 4))))
(get-value ((first_name (Oid 5))(last_name (Oid 5))(email (Oid 5))))
;(get-value ((first_name (Oid 6))(last_name (Oid 6))(email (Oid 6))))
;(get-value ((first_name (Oid 7))(last_name (Oid 7))(email (Oid 7))))
;(get-value ((first_name (Oid 8))(last_name (Oid 8))(email (Oid 8))))
;(get-value ((first_name (Oid 9))(last_name (Oid 9))(email (Oid 9))))
;(get-value ((first_name (Oid 10))(last_name (Oid 10))(email (Oid 10))))
;(get-value ((first_name (Oid 11))(last_name (Oid 11))(email (Oid 11))))
;(get-value ((first_name (Oid 12))(last_name (Oid 12))(email (Oid 12))))
;(get-value ((first_name (Oid 13))(last_name (Oid 13))(email (Oid 13))))
;(get-value ((first_name (Oid 14))(last_name (Oid 14))(email (Oid 14))))
;(get-value ((first_name (Oid 15))(last_name (Oid 15))(email (Oid 15))))
