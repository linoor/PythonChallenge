(ns solution3)

(defn rare
  [text]
  (reduce #(assoc %1 %2 (inc (%1 %2 0))) {} text))

(let [content (slurp "/home/linoor/Dev/pythonchallenge/src/ex2input.data")
      rares (rare content)]
  (println (into (sorted-map-by (fn [key1 key2]
                                  (compare [(get rares key2) key2]
                                           [(get rares key1) key1])))
                 rares))
  (println (filter #(Character/isLowerCase %) content)))

