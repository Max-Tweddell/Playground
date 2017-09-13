(ns sin.core
  (:gen-class))


(defn factorial [n]
  (reduce * (range (bigint 1) (bigint (inc (bigint n))))))

(defn fraction-create [x y]
  (/ (Math/pow x y) (factorial y)))
(defn sin
  "Calculates sine using the approximation sin(x) -> 1 - x^3/!3 + x^5/!5..."
  [iterations x]
  (let [odd-numbers (filter odd? (iterate inc 1))
        fraction (partial fraction-create x)]
    (->> odd-numbers
         (take iterations)
         (map fraction)
         (map * (take iterations (cycle [1 -1])))
         (apply +))))

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (println "Hello, World!"))
