(ns solutions)

(let [alphabet (into #{} (concat (map char (range (int \a) (inc (int \z))))
                                 (map char (range (int \A) (inc (int \Z))))))
      rot13-map (zipmap alphabet (take 52 (drop 26 (cycle alphabet))))]
  (defn rot13
    "Given an input string, produce rot 13 of it"
    [s]
    (apply str (map #(get rot13-map % %) s))))

(def input "g fmnc wms bgblr \\
rpylqjyrc gr zw fylb. rfyrq ufyr amknsrcpq ypc dmp\\
. bmgle gr gl zw fylb gq glcddgagclr ylb rfyr'q\\
ufw rfgq rcvr gq qm jmle. sqgle qrpgle.kyicrpylq()\\
 gq pcamkkclbcb. lmu ynnjw ml rfc spj.")
(println (int \a))

(let [translated (map #(char (mod (+ 2 (int %))
                                  (+ 26 (int \a))))
                      "map")]
  (println (apply str translated)))
