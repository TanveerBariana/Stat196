(ns fungp.vtest2
 (:use fungp.core)
 (:use fungp.util)
 (:use clojure.pprint))
(def criteria 0.01)
(def sample-functions
 '[[+ 2]
 [- 2]
 [* 2]
 [fungp.util/abs 1]
 [fungp.util/sdiv 2]
 [fungp.util/sin 1]
 [inc 1]
 [dec 1]])
(def sample-parameters
 ['x 'y])
(def number-literals
 (map float (range 20)))
(def in-list1 '( 11.2501  11.2501 11.2702  4.1190  4.7051   14.7233 9.7669  4.7664  4.6820    10.9892  10.9959 0.9948  10.6817 11.0088 13.4947 5.3136  15.0011 5.0182  10.9627  11.1806 11.0026  13.5493 16.0196  0.9991  13.6164))
(def in-list2 '( 15.2395  17.9139 15.4264  7.4181  7.3978   7.5033  7.5007  5.0050  7.5102    18.1505  17.2637 17.2202 16.6343 17.2642 17.3936 6.5497  7.9141  8.0801  17.2379  17.4192 17.2620  17.1257 19.8229  19.6223 6.9662))
(def out-list '( -0.9453  -0.9676 -0.9429  -0.8072 -1.0000  0.4633  -0.2331 -0.8662 -0.9990   -0.9967  -1.0000 -0.8382 -0.9511 -0.9999 0.7690  -0.7779 0.3269  -0.9529 -0.9995  -0.9828 -1.0000  0.7933  -0.2897  0.5978  0.4247))
(defn sample-fitness
 [tree]
 (try
 (let [f (compile-tree tree sample-parameters)
 results (map f in-list1 in-list2)]
 (let [r (reduce + (map off-by-sq out-list results))]
 (if (< r criteria) 0 r)))
 (catch Exception e (println e) (println tree))))
(defn sample-report
 [tree fitness]
 (pprint tree)
 (println (str "Error:\t" fitness "\n"))
 (flush))
(defn test-regression2
 [n1 n2]
 (println "\nfungp :: Functional Genetic Programming in Clojure")
 (println "Mike Vollmer, 2012")
 (println (str "Test inputs: " (vec in-list1)))
 (println (str "Test inputs: " (vec in-list2)))
 (println (str "Test outputs: " (vec out-list)))
 (println (str "Max generations: " (* n1 n2)))
 (println)
 (let [options {:iterations n1
 :migrations n2
:num-islands 6
:population-size 40
:tournament-size 5
:mutation-probability 0.1
:max-depth 10
:terminals sample-parameters
:numbers number-literals
:fitness sample-fitness
:functions sample-functions
:report sample-report }
 [tree score] (rest (run-genetic-programming options))]
 (do (println "Done!")
 (sample-report tree score))))