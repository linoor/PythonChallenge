 (ns equality)

 (let [content (slurp "/home/linoor/Dev/pythonchallenge/src/ex3.data")
       surrounded (re-seq #"(?<![A-Z])[A-Z]{3}[a-z][A-Z]{3}(?![A-Z])" content)]
   (println (map #(nth % 3) surrounded)))

