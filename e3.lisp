(in-package :bld-e3)

;; Define children
(defchildren e3 3 *spec*)
(defchildfuns *spec*)
(defgrefs 3 *spec*)
(defgsets 3 *spec*)

;; Define methods
(defgamethodsall e3 *spec* :vector ve3 :spinor re3)

;; Optimize cross product
(defgamethod e3 *x2 *spec* ve3 ve3)
