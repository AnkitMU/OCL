(set-logic QF_SLIA)
(set-option :produce-models true)

(declare-const Product_name String)
(declare-const product_ID Int)
(declare-const price1 Int)
(declare-const isAvailable1 Bool)
(declare-const Product_code String)

(assert (> (str.len Product_name) 5))
(assert (str.in_re Product_name (re.* (re.range "a" "z"))))

(assert (and (>= product_ID 111) (<= product_ID 999)))
(assert (= Product_code (str.++ (str.substr (str.from_int product_ID) 0 3) (str.substr Product_name 0 2))))

(assert (> price1 0))
(assert isAvailable1)

(check-sat)
(get-value (Product_name product_ID price1 isAvailable1 Product_code))
