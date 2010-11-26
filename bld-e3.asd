(defpackage :bld-e3.system
  (:use :asdf :cl)) 
(in-package :bld-e3.system) 
(defsystem :bld-e3
  :name "bld-e3" 
  :author "Benjamin L. Diedrich" 
  :version "0.0.1" 
  :maintainer "Benjamin L. Diedrich" 
  :license "MIT" 
  :description "Euclidean 3D geometric algebra" 
  :depends-on ("bld-gen" "bld-ga" "bld-gagen")
  :components ((:file "package")
	       (:file "e3" :depends-on ("package"))))
