(ns fib.core
  (:gen-class))

(defn fib [x]
  (if (< x 2) 0 (+ (fib (dec x)) (fib (dec (dec x))))))

(defn fibp [x]
  (if (< x 2)
    0
    (let
        [f1 (future (fib (dec x)))
         f2 (future (fib (- x 2)))]
       (+ @f1 @f2))))


(defn fib-imp [x]
        (loop [x 1 first 0 second 1 temp 0]
          (recur (inc x) (second) (+ first second) 0)))
(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (println (fib-imp 1000)))
