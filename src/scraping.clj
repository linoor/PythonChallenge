 (ns scraping)

 (def base-url "http://www.pythonchallenge.com/pc/def/linkedlist.php?nothing=")

 (defn get-page [num]
   (slurp (str base-url num)))

 (defn get-num [page]
   (get (re-find #"nothing is (\d+)" page) 1))


 (defn find-last
   ([last-num] (find-last last-num []))
   ([last-num results]
    (let [num (get-num (get-page last-num))]
      (if (nil? num)
        results
        (find-last num (conj results num))))))

;(println (find-last 12345))
; divided by two
(println (find-last 8022))


