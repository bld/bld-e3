(defpackage bld-e3
  (:use :cl :bld-ga :bld-gagen)
  (:export :e3 :se3 :ve3 :bve3 :ie3 :re3 :mve3
	   :*x2))

(in-package :bld-e3)

(defparameter *spec*
  '((se3 #(0))
    (ve3 #(#b1 #b10 #b100))
    (bve3 #(#b11 #b101 #b110))
    (ie3 #(#b111))
    (re3 #(0 #b11 #b101 #b110))
    (mve3 #(0 #b1 #b10 #b100 #b11 #b101 #b110 #b111)))
  "3D Euclidean algebra specification")

(defg e3 3)
(defgfun e3 3)

(defmethod *x2 ((a e3) (b e3))
  "3D cross product"
  (dual (*o2 a b)))
