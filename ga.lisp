
(IN-PACKAGE :BLD-E3) 
(DEFMETHOD *O2 ((G1 E3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (+ (* (GREF G1 :S) (GREF G2 :E1))
                            (* (GREF G1 :E1) (GREF G2 :S)))
                         (+ (* (GREF G1 :S) (GREF G2 :E2))
                            (* (GREF G1 :E2) (GREF G2 :S)))
                         (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                            (* (GREF G1 :E1) (GREF G2 :E2))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1))
                            (* (GREF G1 :E1E2) (GREF G2 :S)))
                         (+ (* (GREF G1 :S) (GREF G2 :E3))
                            (* (GREF G1 :E3) (GREF G2 :S)))
                         (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                            (* (GREF G1 :E1) (GREF G2 :E3))
                            (* -1 (GREF G1 :E3) (GREF G2 :E1))
                            (* (GREF G1 :E1E3) (GREF G2 :S)))
                         (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                            (* (GREF G1 :E2) (GREF G2 :E3))
                            (* -1 (GREF G1 :E3) (GREF G2 :E2))
                            (* (GREF G1 :E2E3) (GREF G2 :S)))
                         (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                            (* (GREF G1 :E1) (GREF G2 :E2E3))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                            (* (GREF G1 :E1E2) (GREF G2 :E3))
                            (* (GREF G1 :E3) (GREF G2 :E1E2))
                            (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                            (* (GREF G1 :E2E3) (GREF G2 :E1))
                            (* (GREF G1 :E1E2E3) (GREF G2 :S)))))) 
(DEFMETHOD *O2 ((G1 E3) (G2 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :E1) (GREF G2 :S))
                         (* (GREF G1 :E2) (GREF G2 :S))
                         (* (GREF G1 :E1E2) (GREF G2 :S))
                         (* (GREF G1 :E3) (GREF G2 :S))
                         (* (GREF G1 :E1E3) (GREF G2 :S))
                         (* (GREF G1 :E2E3) (GREF G2 :S))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S))))) 
(DEFMETHOD *O2 ((G1 E3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))
                         (+ (* (GREF G1 :E1) (GREF G2 :E2))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                         (* (GREF G1 :S) (GREF G2 :E3))
                         (+ (* (GREF G1 :E1) (GREF G2 :E3))
                            (* -1 (GREF G1 :E3) (GREF G2 :E1)))
                         (+ (* (GREF G1 :E2) (GREF G2 :E3))
                            (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                         (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                            (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                            (* (GREF G1 :E2E3) (GREF G2 :E1)))))) 
(DEFMETHOD *O2 ((G1 E3) (G2 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 0 0 (* (GREF G1 :S) (GREF G2 :E1E2)) 0
                         (* (GREF G1 :S) (GREF G2 :E1E3))
                         (* (GREF G1 :S) (GREF G2 :E2E3))
                         (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                            (* (GREF G1 :E3) (GREF G2 :E1E2)))))) 
(DEFMETHOD *O2 ((G1 E3) (G2 IE3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *O2 ((G1 E3) (G2 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :E1) (GREF G2 :S))
                         (* (GREF G1 :E2) (GREF G2 :S))
                         (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                            (* (GREF G1 :E1E2) (GREF G2 :S)))
                         (* (GREF G1 :E3) (GREF G2 :S))
                         (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                            (* (GREF G1 :E1E3) (GREF G2 :S)))
                         (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                            (* (GREF G1 :E2E3) (GREF G2 :S)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                            (* (GREF G1 :E3) (GREF G2 :E1E2))
                            (* (GREF G1 :E1E2E3) (GREF G2 :S)))))) 
(DEFMETHOD *O2 ((G1 SE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :E3))
                         (* (GREF G1 :S) (GREF G2 :E1E3))
                         (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :S) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *O2 ((G1 SE3) (G2 SE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :S))))) 
(DEFMETHOD *O2 ((G1 SE3) (G2 VE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :S) (GREF G2 :E3))))) 
(DEFMETHOD *O2 ((G1 SE3) (G2 BVE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :S) (GREF G2 :E1E3))))) 
(DEFMETHOD *O2 ((G1 SE3) (G2 IE3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *O2 ((G1 SE3) (G2 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :S) (GREF G2 :E1E3))))) 
(DEFMETHOD *O2 ((G1 VE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 (* (GREF G1 :E1) (GREF G2 :S))
                         (* (GREF G1 :E2) (GREF G2 :S))
                         (+ (* (GREF G1 :E1) (GREF G2 :E2))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                         (* (GREF G1 :E3) (GREF G2 :S))
                         (+ (* (GREF G1 :E1) (GREF G2 :E3))
                            (* -1 (GREF G1 :E3) (GREF G2 :E1)))
                         (+ (* (GREF G1 :E2) (GREF G2 :E3))
                            (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                            (* (GREF G1 :E3) (GREF G2 :E1E2)))))) 
(DEFMETHOD *O2 ((G1 VE3) (G2 SE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* (GREF G1 :E1) (GREF G2 :S))
                         (* (GREF G1 :E2) (GREF G2 :S))
                         (* (GREF G1 :E3) (GREF G2 :S))))) 
(DEFMETHOD *O2 ((G1 VE3) (G2 VE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G2 :E2))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                  (+ (* (GREF G1 :E2) (GREF G2 :E3))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E3))
                     (* -1 (GREF G1 :E3) (GREF G2 :E1)))))) 
(DEFMETHOD *O2 ((G1 VE3) (G2 BVE3))
  (MAKE-INSTANCE 'IE3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                     (* (GREF G1 :E3) (GREF G2 :E1E2)))))) 
(DEFMETHOD *O2 ((G1 VE3) (G2 IE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *O2 ((G1 VE3) (G2 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 (* (GREF G1 :E1) (GREF G2 :S))
                         (* (GREF G1 :E2) (GREF G2 :S)) 0
                         (* (GREF G1 :E3) (GREF G2 :S)) 0 0
                         (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                            (* (GREF G1 :E3) (GREF G2 :E1E2)))))) 
(DEFMETHOD *O2 ((G1 BVE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 0 0 (* (GREF G1 :E1E2) (GREF G2 :S)) 0
                         (* (GREF G1 :E1E3) (GREF G2 :S))
                         (* (GREF G1 :E2E3) (GREF G2 :S))
                         (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                            (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                            (* (GREF G1 :E2E3) (GREF G2 :E1)))))) 
(DEFMETHOD *O2 ((G1 BVE3) (G2 SE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :E1E2) (GREF G2 :S))
                         (* (GREF G1 :E2E3) (GREF G2 :S))
                         (* (GREF G1 :E1E3) (GREF G2 :S))))) 
(DEFMETHOD *O2 ((G1 BVE3) (G2 VE3))
  (MAKE-INSTANCE 'IE3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                     (* (GREF G1 :E2E3) (GREF G2 :E1)))))) 
(DEFMETHOD *O2 ((G1 BVE3) (G2 BVE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *O2 ((G1 BVE3) (G2 IE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *O2 ((G1 BVE3) (G2 RE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :E1E2) (GREF G2 :S))
                         (* (GREF G1 :E2E3) (GREF G2 :S))
                         (* (GREF G1 :E1E3) (GREF G2 :S))))) 
(DEFMETHOD *O2 ((G1 IE3) (G2 E3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (* (GREF G1 :E1E2E3) (GREF G2 :S))))) 
(DEFMETHOD *O2 ((G1 IE3) (G2 SE3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (* (GREF G1 :E1E2E3) (GREF G2 :S))))) 
(DEFMETHOD *O2 ((G1 IE3) (G2 VE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *O2 ((G1 IE3) (G2 BVE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *O2 ((G1 IE3) (G2 IE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *O2 ((G1 IE3) (G2 RE3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (* (GREF G1 :E1E2E3) (GREF G2 :S))))) 
(DEFMETHOD *O2 ((G1 RE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))
                         (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                            (* (GREF G1 :E1E2) (GREF G2 :S)))
                         (* (GREF G1 :S) (GREF G2 :E3))
                         (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                            (* (GREF G1 :E1E3) (GREF G2 :S)))
                         (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                            (* (GREF G1 :E2E3) (GREF G2 :S)))
                         (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                            (* (GREF G1 :E1E2) (GREF G2 :E3))
                            (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                            (* (GREF G1 :E2E3) (GREF G2 :E1)))))) 
(DEFMETHOD *O2 ((G1 RE3) (G2 SE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :E1E2) (GREF G2 :S))
                         (* (GREF G1 :E2E3) (GREF G2 :S))
                         (* (GREF G1 :E1E3) (GREF G2 :S))))) 
(DEFMETHOD *O2 ((G1 RE3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2)) 0
                         (* (GREF G1 :S) (GREF G2 :E3)) 0 0
                         (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                            (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                            (* (GREF G1 :E2E3) (GREF G2 :E1)))))) 
(DEFMETHOD *O2 ((G1 RE3) (G2 BVE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :S) (GREF G2 :E1E3))))) 
(DEFMETHOD *O2 ((G1 RE3) (G2 IE3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *O2 ((G1 RE3) (G2 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                            (* (GREF G1 :E1E2) (GREF G2 :S)))
                         (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                            (* (GREF G1 :E2E3) (GREF G2 :S)))
                         (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                            (* (GREF G1 :E1E3) (GREF G2 :S)))))) 
(DEFMETHOD *G2 ((G1 E3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G2 :S))
                     (* (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G1 :E2) (GREF G2 :E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (* (GREF G1 :E3) (GREF G2 :E3))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1))
                     (* (GREF G1 :E1) (GREF G2 :S))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E3) (GREF G2 :E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3))
                     (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E2))
                     (* (GREF G1 :E1) (GREF G2 :E1E2))
                     (* (GREF G1 :E2) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E1E3) (GREF G2 :E1E2E3))
                     (* (GREF G1 :E2E3) (GREF G2 :E3))
                     (* (GREF G1 :E1E2E3) (GREF G2 :E1E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                     (* (GREF G1 :E1) (GREF G2 :E2))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1))
                     (* (GREF G1 :E1E2) (GREF G2 :S))
                     (* (GREF G1 :E3) (GREF G2 :E1E2E3))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E2E3) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E2E3) (GREF G2 :E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E3))
                     (* (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G1 :E2) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))
                     (* (GREF G1 :E3) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2))
                     (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                     (* (GREF G1 :E1) (GREF G2 :E3))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3))
                     (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E3) (GREF G2 :E1))
                     (* (GREF G1 :E1E3) (GREF G2 :S))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                     (* (GREF G1 :E1) (GREF G2 :E1E2E3))
                     (* (GREF G1 :E2) (GREF G2 :E3))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2))
                     (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                     (* (GREF G1 :E2E3) (GREF G2 :S))
                     (* (GREF G1 :E1E2E3) (GREF G2 :E1)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                     (* (GREF G1 :E1) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E2) (GREF G2 :E3))
                     (* (GREF G1 :E3) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                     (* (GREF G1 :E2E3) (GREF G2 :E1))
                     (* (GREF G1 :E1E2E3) (GREF G2 :S)))))) 
(DEFMETHOD *G2 ((G1 E3) (G2 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :E1) (GREF G2 :S))
                         (* (GREF G1 :E2) (GREF G2 :S))
                         (* (GREF G1 :E1E2) (GREF G2 :S))
                         (* (GREF G1 :E3) (GREF G2 :S))
                         (* (GREF G1 :E1E3) (GREF G2 :S))
                         (* (GREF G1 :E2E3) (GREF G2 :S))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S))))) 
(DEFMETHOD *G2 ((G1 E3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G1 :E2) (GREF G2 :E2))
                     (* (GREF G1 :E3) (GREF G2 :E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1))
                     (* (GREF G1 :E1E2) (GREF G2 :E2))
                     (* (GREF G1 :E1E3) (GREF G2 :E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                     (* (GREF G1 :E2E3) (GREF G2 :E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E2))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1))
                     (* (GREF G1 :E1E2E3) (GREF G2 :E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E3))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E3))
                     (* -1 (GREF G1 :E3) (GREF G2 :E1))
                     (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2)))
                  (+ (* (GREF G1 :E2) (GREF G2 :E3))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2))
                     (* (GREF G1 :E1E2E3) (GREF G2 :E1)))
                  (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                     (* (GREF G1 :E2E3) (GREF G2 :E1)))))) 
(DEFMETHOD *G2 ((G1 E3) (G2 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                  (+ (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E1E2E3) (GREF G2 :E1E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G1 :E2) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                     (* (GREF G1 :E3) (GREF G2 :E1E2)))))) 
(DEFMETHOD *G2 ((G1 E3) (G2 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* (GREF G1 :S) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *G2 ((G1 E3) (G2 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :S))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                     (* (GREF G1 :E2) (GREF G2 :S))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E1E2E3) (GREF G2 :E1E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G1 :E2) (GREF G2 :E2E3))
                     (* (GREF G1 :E3) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                     (* (GREF G1 :E1E3) (GREF G2 :S))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                     (* (GREF G1 :E2E3) (GREF G2 :S)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                     (* (GREF G1 :E3) (GREF G2 :E1E2))
                     (* (GREF G1 :E1E2E3) (GREF G2 :S)))))) 
(DEFMETHOD *G2 ((G1 SE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :E3))
                         (* (GREF G1 :S) (GREF G2 :E1E3))
                         (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :S) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *G2 ((G1 SE3) (G2 SE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :S))))) 
(DEFMETHOD *G2 ((G1 SE3) (G2 VE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :S) (GREF G2 :E3))))) 
(DEFMETHOD *G2 ((G1 SE3) (G2 BVE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :S) (GREF G2 :E1E3))))) 
(DEFMETHOD *G2 ((G1 SE3) (G2 IE3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *G2 ((G1 SE3) (G2 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :S) (GREF G2 :E1E3))))) 
(DEFMETHOD *G2 ((G1 VE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G1 :E2) (GREF G2 :E2))
                     (* (GREF G1 :E3) (GREF G2 :E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :S))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                     (* (GREF G1 :E2) (GREF G2 :S))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E2))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1))
                     (* (GREF G1 :E3) (GREF G2 :E1E2E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G1 :E2) (GREF G2 :E2E3))
                     (* (GREF G1 :E3) (GREF G2 :S)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E3))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3))
                     (* -1 (GREF G1 :E3) (GREF G2 :E1)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E2E3))
                     (* (GREF G1 :E2) (GREF G2 :E3))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                     (* (GREF G1 :E3) (GREF G2 :E1E2)))))) 
(DEFMETHOD *G2 ((G1 VE3) (G2 SE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* (GREF G1 :E1) (GREF G2 :S))
                         (* (GREF G1 :E2) (GREF G2 :S))
                         (* (GREF G1 :E3) (GREF G2 :S))))) 
(DEFMETHOD *G2 ((G1 VE3) (G2 VE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G1 :E2) (GREF G2 :E2))
                     (* (GREF G1 :E3) (GREF G2 :E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E2))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                  (+ (* (GREF G1 :E2) (GREF G2 :E3))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E3))
                     (* -1 (GREF G1 :E3) (GREF G2 :E1)))))) 
(DEFMETHOD *G2 ((G1 VE3) (G2 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                            (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                            (* -1 (GREF G1 :E3) (GREF G2 :E2E3)))
                         0
                         (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                            (* (GREF G1 :E2) (GREF G2 :E2E3)))
                         0 0
                         (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                            (* (GREF G1 :E3) (GREF G2 :E1E2)))))) 
(DEFMETHOD *G2 ((G1 VE3) (G2 IE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :E3) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *G2 ((G1 VE3) (G2 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* (GREF G1 :E1) (GREF G2 :S))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                            (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                            (* (GREF G1 :E2) (GREF G2 :S))
                            (* -1 (GREF G1 :E3) (GREF G2 :E2E3)))
                         0
                         (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                            (* (GREF G1 :E2) (GREF G2 :E2E3))
                            (* (GREF G1 :E3) (GREF G2 :S)))
                         0 0
                         (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                            (* (GREF G1 :E3) (GREF G2 :E1E2)))))) 
(DEFMETHOD *G2 ((G1 BVE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                  (+ (* (GREF G1 :E1E2) (GREF G2 :E2))
                     (* (GREF G1 :E1E3) (GREF G2 :E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                     (* (GREF G1 :E1E3) (GREF G2 :E1E2E3))
                     (* (GREF G1 :E2E3) (GREF G2 :E3)))
                  (+ (* (GREF G1 :E1E2) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                  (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                     (* (GREF G1 :E1E3) (GREF G2 :S))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                     (* (GREF G1 :E2E3) (GREF G2 :S)))
                  (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                     (* (GREF G1 :E2E3) (GREF G2 :E1)))))) 
(DEFMETHOD *G2 ((G1 BVE3) (G2 SE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :E1E2) (GREF G2 :S))
                         (* (GREF G1 :E2E3) (GREF G2 :S))
                         (* (GREF G1 :E1E3) (GREF G2 :S))))) 
(DEFMETHOD *G2 ((G1 BVE3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* (GREF G1 :E1E2) (GREF G2 :E2))
                            (* (GREF G1 :E1E3) (GREF G2 :E3)))
                         (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                            (* (GREF G1 :E2E3) (GREF G2 :E3)))
                         0
                         (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                            (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                         0 0
                         (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                            (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                            (* (GREF G1 :E2E3) (GREF G2 :E1)))))) 
(DEFMETHOD *G2 ((G1 BVE3) (G2 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                  (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))))) 
(DEFMETHOD *G2 ((G1 BVE3) (G2 IE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *G2 ((G1 BVE3) (G2 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                  (+ (* (GREF G1 :E1E2) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                     (* (GREF G1 :E2E3) (GREF G2 :S)))
                  (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                     (* (GREF G1 :E1E3) (GREF G2 :S))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))))) 
(DEFMETHOD *G2 ((G1 IE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2E3) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E2E3) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2))
                         (* (GREF G1 :E1E2E3) (GREF G2 :E1))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S))))) 
(DEFMETHOD *G2 ((G1 IE3) (G2 SE3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (* (GREF G1 :E1E2E3) (GREF G2 :S))))) 
(DEFMETHOD *G2 ((G1 IE3) (G2 VE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :E1E2E3) (GREF G2 :E3))
                         (* (GREF G1 :E1E2E3) (GREF G2 :E1))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2))))) 
(DEFMETHOD *G2 ((G1 IE3) (G2 BVE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2E3) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2))))) 
(DEFMETHOD *G2 ((G1 IE3) (G2 IE3))
  (MAKE-INSTANCE 'SE3 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *G2 ((G1 IE3) (G2 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2E3) (GREF G2 :E1E3)) 0
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)) 0 0
                         (* (GREF G1 :E1E2E3) (GREF G2 :S))))) 
(DEFMETHOD *G2 ((G1 RE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1))
                     (* (GREF G1 :E1E2) (GREF G2 :E2))
                     (* (GREF G1 :E1E3) (GREF G2 :E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                     (* (GREF G1 :E1E3) (GREF G2 :E1E2E3))
                     (* (GREF G1 :E2E3) (GREF G2 :E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E3))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                     (* (GREF G1 :E1E3) (GREF G2 :S))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                     (* (GREF G1 :E2E3) (GREF G2 :S)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                     (* (GREF G1 :E1E2) (GREF G2 :E3))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                     (* (GREF G1 :E2E3) (GREF G2 :E1)))))) 
(DEFMETHOD *G2 ((G1 RE3) (G2 SE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :E1E2) (GREF G2 :S))
                         (* (GREF G1 :E2E3) (GREF G2 :S))
                         (* (GREF G1 :E1E3) (GREF G2 :S))))) 
(DEFMETHOD *G2 ((G1 RE3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* (GREF G1 :S) (GREF G2 :E1))
                            (* (GREF G1 :E1E2) (GREF G2 :E2))
                            (* (GREF G1 :E1E3) (GREF G2 :E3)))
                         (+ (* (GREF G1 :S) (GREF G2 :E2))
                            (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                            (* (GREF G1 :E2E3) (GREF G2 :E3)))
                         0
                         (+ (* (GREF G1 :S) (GREF G2 :E3))
                            (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                            (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                         0 0
                         (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                            (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                            (* (GREF G1 :E2E3) (GREF G2 :E1)))))) 
(DEFMETHOD *G2 ((G1 RE3) (G2 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))))) 
(DEFMETHOD *G2 ((G1 RE3) (G2 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2E3)) 0
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3)) 0 0
                         (* (GREF G1 :S) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *G2 ((G1 RE3) (G2 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                     (* (GREF G1 :E1E2) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                     (* (GREF G1 :E2E3) (GREF G2 :S)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                     (* (GREF G1 :E1E3) (GREF G2 :S))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 E3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2E3) (GREF G1 :E1))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :S) (GREF G2 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E3) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                         (* (GREF G3 :E3) (GREF G1 :E1)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E2)))
                      (GREF G2 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                         (* (GREF G3 :S) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                         (* (GREF G3 :E2) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1) (GREF G1 :E2))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3))
                         (* (GREF G3 :E1) (GREF G2 :E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                         (* (GREF G3 :S) (GREF G1 :E2))
                         (* (GREF G3 :E1) (GREF G1 :E1E2))
                         (* (GREF G3 :E2E3) (GREF G1 :E3)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E2) (GREF G2 :E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G3 :E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G1 :S))
                         (* (GREF G3 :S) (GREF G1 :E1))
                         (* (GREF G3 :E1E2) (GREF G1 :E2))
                         (* -1 (GREF G3 :E2) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E3) (GREF G1 :E3))
                         (* -1 (GREF G3 :E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E2E3))
                         (* (GREF G3 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E1E2))
                         (* (GREF G3 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* (GREF G3 :E1) (GREF G1 :E1))
                         (* (GREF G3 :E2) (GREF G1 :E2))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* (GREF G3 :E3) (GREF G1 :E3))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E3))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E2E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E2E3)))
                  (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2E3) (GREF G1 :E1))
                     (* -1 (GREF G3 :E1E2E3) (GREF G1 :S) (GREF G2 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E1E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                         (* (GREF G3 :E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :E2)))
                      (GREF G2 :E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3))
                         (* (GREF G3 :E1) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                         (* -1 (GREF G3 :S) (GREF G1 :E2))
                         (* -1 (GREF G3 :E1) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                         (* (GREF G3 :S) (GREF G2 :E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                         (* (GREF G3 :E2) (GREF G1 :E1))
                         (* (GREF G3 :E1) (GREF G1 :E2))
                         (* (GREF G3 :S) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E2E3) (GREF G1 :E3)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E2E3))
                         (* (GREF G3 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E1E2))
                         (* (GREF G3 :E1E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* (GREF G3 :E1) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2) (GREF G1 :E2))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E3) (GREF G1 :E3))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E2) (GREF G2 :E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G3 :E3) (GREF G2 :E2))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G1 :S))
                         (* (GREF G3 :S) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E2))
                         (* (GREF G3 :E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E3))
                         (* (GREF G3 :E3) (GREF G1 :E1E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :E2E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E2E3)))
                  (+ (* (GREF G3 :E3) (GREF G2 :E1E2E3) (GREF G1 :E1))
                     (* (GREF G3 :E3) (GREF G1 :S) (GREF G2 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (*
                      (+ (* (GREF G3 :E1E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G1 :S))
                         (* (GREF G3 :E1E2E3) (GREF G1 :E1))
                         (* (GREF G3 :E3) (GREF G1 :E2)))
                      (GREF G2 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E2) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G1 :S))
                         (* (GREF G3 :S) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E2))
                         (* -1 (GREF G3 :E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G3 :S) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E2) (GREF G2 :E3))
                         (* (GREF G3 :E3) (GREF G2 :E1E2)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* -1 (GREF G3 :E1) (GREF G1 :E1))
                         (* (GREF G3 :E2) (GREF G1 :E2))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E3) (GREF G1 :E3)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                         (* (GREF G3 :S) (GREF G2 :E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2))
                         (* (GREF G3 :E2E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* (GREF G3 :E2) (GREF G1 :E1))
                         (* (GREF G3 :E1) (GREF G1 :E2))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :E3))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :S) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E2))
                         (* (GREF G3 :E3) (GREF G2 :E1)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :S))
                         (* (GREF G3 :E1E2) (GREF G1 :E1))
                         (* (GREF G3 :S) (GREF G1 :E2))
                         (* -1 (GREF G3 :E1) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E3))
                         (* (GREF G3 :E1E2E3) (GREF G1 :E1E3))
                         (* (GREF G3 :E3) (GREF G1 :E2E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G3 :E1E3) (GREF G2 :E1E2E3) (GREF G1 :E1))
                     (* (GREF G3 :E1E3) (GREF G1 :S) (GREF G2 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E2E3) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G1 :S))
                         (* (GREF G3 :E1E2E3) (GREF G1 :E1)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E1E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1))
                         (* (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E2) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* -1 (GREF G3 :E1) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2) (GREF G1 :E2))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E2) (GREF G2 :E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G1 :S))
                         (* (GREF G3 :S) (GREF G1 :E1))
                         (* (GREF G3 :E1E2) (GREF G1 :E2))
                         (* (GREF G3 :E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E3)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :S) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :S))
                         (* (GREF G3 :E1E2) (GREF G1 :E1))
                         (* -1 (GREF G3 :S) (GREF G1 :E2))
                         (* (GREF G3 :E1) (GREF G1 :E1E2))
                         (* (GREF G3 :E2E3) (GREF G1 :E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                         (* (GREF G3 :S) (GREF G2 :E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2))
                         (* (GREF G3 :E2E3) (GREF G2 :E2))
                         (* (GREF G3 :E1E3) (GREF G2 :E1)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* (GREF G3 :E2) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1) (GREF G1 :E2))
                         (* (GREF G3 :S) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E2E3) (GREF G1 :E3))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G1 :E2E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E3)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2E3) (GREF G1 :E1))
                     (* -1 (GREF G3 :E2) (GREF G1 :S) (GREF G2 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G2 :E1E2E3))
                         (* (GREF G3 :S) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G1 :S))
                         (* (GREF G3 :S) (GREF G1 :E1)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E2E3))
                         (* (GREF G3 :E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* -1 (GREF G3 :E1) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2) (GREF G1 :E2)))
                      (GREF G2 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E3) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G1 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E2))
                         (* -1 (GREF G3 :E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E1E2)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1))
                         (* (GREF G3 :E3) (GREF G1 :E2))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E2) (GREF G1 :E3)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E3))
                         (* (GREF G3 :E1) (GREF G2 :E1E2))
                         (* -1 (GREF G3 :S) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                         (* (GREF G3 :E3) (GREF G1 :E1))
                         (* (GREF G3 :E1E2E3) (GREF G1 :E2))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E1) (GREF G1 :E3))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E2))
                         (* (GREF G3 :E1) (GREF G2 :E2))
                         (* -1 (GREF G3 :E2) (GREF G2 :E1)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :S))
                         (* (GREF G3 :E1E3) (GREF G1 :E1))
                         (* (GREF G3 :E2E3) (GREF G1 :E2))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E2))
                         (* (GREF G3 :S) (GREF G1 :E3))
                         (* -1 (GREF G3 :E1) (GREF G1 :E1E3))
                         (* -1 (GREF G3 :E2) (GREF G1 :E2E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3) (GREF G1 :E1))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* -1 (GREF G3 :E1) (GREF G1 :E1)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G2 :E1E2E3))
                         (* (GREF G3 :S) (GREF G2 :E2E3))
                         (* (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G1 :S))
                         (* (GREF G3 :S) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E2)))
                      (GREF G2 :E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E3) (GREF G1 :E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G1 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* (GREF G3 :E1E3) (GREF G1 :E2))
                         (* (GREF G3 :E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E2) (GREF G1 :E3)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E2))
                         (* (GREF G3 :E1) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :S))
                         (* (GREF G3 :E1E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E2))
                         (* (GREF G3 :E1E2E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :S) (GREF G1 :E3))
                         (* (GREF G3 :E1) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E3))
                         (* (GREF G3 :E1) (GREF G2 :E1E2))
                         (* -1 (GREF G3 :S) (GREF G2 :E2))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                         (* (GREF G3 :E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :E2))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1) (GREF G1 :E3))
                         (* (GREF G3 :S) (GREF G1 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :S) (GREF G2 :E1E2E3) (GREF G1 :E1))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* -1 (GREF G3 :E2) (GREF G1 :E1)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E2) (GREF G1 :S))
                         (* (GREF G3 :E1E2) (GREF G1 :E1))
                         (* (GREF G3 :S) (GREF G1 :E2)))
                      (GREF G2 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                         (* (GREF G3 :E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :E2))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E2E3) (GREF G2 :E3))
                         (* (GREF G3 :S) (GREF G2 :E1E2)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                         (* (GREF G3 :E2E3) (GREF G1 :E2))
                         (* (GREF G3 :E1E2E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :S) (GREF G1 :E3)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2))
                         (* (GREF G3 :E2) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2E3) (GREF G1 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* (GREF G3 :E1E3) (GREF G1 :E2))
                         (* -1 (GREF G3 :E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E3))
                         (* (GREF G3 :E2) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                         (* (GREF G3 :E2) (GREF G2 :E1E2))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E2))
                         (* (GREF G3 :S) (GREF G2 :E1)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* (GREF G3 :E1E2E3) (GREF G1 :E1))
                         (* (GREF G3 :E3) (GREF G1 :E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E2) (GREF G1 :E3))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E3))
                         (* (GREF G3 :S) (GREF G1 :E2E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E1)))
                  (+ (* (GREF G3 :E1) (GREF G2 :E1E2E3) (GREF G1 :E1))
                     (* (GREF G3 :E1) (GREF G1 :S) (GREF G2 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E2) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E2) (GREF G1 :S))
                         (* (GREF G3 :E1E2) (GREF G1 :E1)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E1E3)))
                      (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* -1 (GREF G3 :E2) (GREF G1 :E1))
                         (* (GREF G3 :E1) (GREF G1 :E2)))
                      (GREF G2 :E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E2E3) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E2))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E3))
                         (* (GREF G3 :E1) (GREF G2 :E1E2)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                         (* (GREF G3 :E3) (GREF G1 :E1))
                         (* (GREF G3 :E1E2E3) (GREF G1 :E2))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1) (GREF G1 :E3)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                         (* (GREF G3 :E2) (GREF G2 :E1E2))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* (GREF G3 :E1E2E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E3) (GREF G1 :E2))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E2) (GREF G1 :E3))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2))
                         (* (GREF G3 :E2) (GREF G2 :E2))
                         (* (GREF G3 :E1) (GREF G2 :E1)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2E3) (GREF G1 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E2))
                         (* (GREF G3 :E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E2) (GREF G1 :E3))
                         (* -1 (GREF G3 :E2) (GREF G1 :E1E3))
                         (* (GREF G3 :E1) (GREF G1 :E2E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 E3) (G3 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :S))
                      (* (GREF G1 :E1) (GREF G2 :E1))
                      (* (GREF G1 :E2) (GREF G2 :E2))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                      (* (GREF G1 :E3) (GREF G2 :E3))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1))
                      (* (GREF G1 :E1) (GREF G2 :S))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                      (* (GREF G1 :E1E2) (GREF G2 :E2))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E3) (GREF G2 :E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E2))
                      (* (GREF G1 :E1) (GREF G2 :E1E2))
                      (* (GREF G1 :E2) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                      (* -1 (GREF G1 :E3) (GREF G2 :E2E3))
                      (* (GREF G1 :E1E3) (GREF G2 :E1E2E3))
                      (* (GREF G1 :E2E3) (GREF G2 :E3))
                      (* (GREF G1 :E1E2E3) (GREF G2 :E1E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                      (* (GREF G1 :E1) (GREF G2 :E2))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1))
                      (* (GREF G1 :E1E2) (GREF G2 :S))
                      (* (GREF G1 :E3) (GREF G2 :E1E2E3))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                      (* (GREF G1 :E2E3) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E2E3) (GREF G2 :E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E3))
                      (* (GREF G1 :E1) (GREF G2 :E1E3))
                      (* (GREF G1 :E2) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))
                      (* (GREF G1 :E3) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                      (* (GREF G1 :E1) (GREF G2 :E3))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3))
                      (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1))
                      (* (GREF G1 :E1E3) (GREF G2 :S))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                      (* (GREF G1 :E1) (GREF G2 :E1E2E3))
                      (* (GREF G1 :E2) (GREF G2 :E3))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E3) (GREF G2 :E2))
                      (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                      (* (GREF G1 :E2E3) (GREF G2 :S))
                      (* (GREF G1 :E1E2E3) (GREF G2 :E1)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                      (* (GREF G1 :E1) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E2) (GREF G2 :E3))
                      (* (GREF G1 :E3) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                      (* (GREF G1 :E2E3) (GREF G2 :E1))
                      (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 E3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E2E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G1 :E1))
                       (* (GREF G3 :E2) (GREF G1 :E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G2 :E3))
                       (* (GREF G3 :E2) (GREF G2 :E1E2E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G1 :S))
                       (* -1 (GREF G3 :E2) (GREF G1 :E1E2)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G2 :E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E2E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :S))
                       (* (GREF G3 :E1) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E2E3)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E3))
                       (* (GREF G1 :E1) (GREF G2 :E1E3))
                       (* (GREF G1 :E2) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))
                       (* (GREF G1 :E3) (GREF G2 :S))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E2))
                       (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)))
                    (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G3 :E1) (GREF G2 :E3))
                       (* (GREF G3 :E2) (GREF G2 :E1E2E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G1 :E1))
                       (* -1 (GREF G3 :E2) (GREF G1 :E2)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E2E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G1 :S))
                       (* (GREF G3 :E2) (GREF G1 :E1E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E2E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :S))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G2 :E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E2E3)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :E1))
                       (* (GREF G3 :E1) (GREF G1 :E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                       (* (GREF G1 :E1) (GREF G2 :E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3))
                       (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E1))
                       (* (GREF G1 :E1E3) (GREF G2 :S))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2))
                       (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2)))
                    (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E2) (GREF G2 :E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G1 :E1))
                       (* (GREF G3 :E2) (GREF G1 :E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G1 :S))
                       (* -1 (GREF G3 :E2) (GREF G1 :E1E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :S))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E3)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :E1))
                       (* (GREF G3 :E1) (GREF G1 :E2)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                       (* (GREF G1 :E1) (GREF G2 :E1E2E3))
                       (* (GREF G1 :E2) (GREF G2 :E3))
                       (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E2))
                       (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                       (* (GREF G1 :E2E3) (GREF G2 :S))
                       (* (GREF G1 :E1E2E3) (GREF G2 :E1)))
                    (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G1 :E1))
                       (* -1 (GREF G3 :E2) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E2) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G1 :S))
                       (* (GREF G3 :E2) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :S))
                       (* (GREF G3 :E1) (GREF G1 :E1E2)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E3)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1) (GREF G1 :E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                       (* (GREF G1 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E1E2) (GREF G2 :E3))
                       (* (GREF G1 :E3) (GREF G2 :E1E2))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                       (* (GREF G1 :E2E3) (GREF G2 :E1))
                       (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                    (GREF G3 :E3)))
                  (+ (* (GREF G3 :E1) (GREF G2 :E1E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :E3))
                     (* -1 (GREF G3 :E1) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1) (GREF G1 :S) (GREF G2 :E1E3))
                     (* (GREF G3 :E3) (GREF G2 :E3) (GREF G1 :E3))
                     (* (GREF G3 :E3) (GREF G1 :E2) (GREF G2 :E2))
                     (* -1 (GREF G3 :E3) (GREF G2 :E1E3) (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E1) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1) (GREF G2 :E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :E1))
                         (* (GREF G3 :E1) (GREF G1 :E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G3 :E1) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G3 :E1) (GREF G2 :E1E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1) (GREF G1 :S) (GREF G2 :E3))
                     (* -1 (GREF G3 :E3) (GREF G2 :E1E3) (GREF G1 :E3))
                     (* -1 (GREF G3 :E3) (GREF G1 :E2) (GREF G2 :E1E2))
                     (* (GREF G3 :E3) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E3) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :S))
                         (* (GREF G3 :E1) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E1) (GREF G2 :E1E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1) (GREF G1 :E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G3 :E2) (GREF G2 :E1E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2) (GREF G1 :S) (GREF G2 :E3))
                     (* -1 (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E3))
                     (* (GREF G3 :E3) (GREF G1 :E1) (GREF G2 :E1E2))
                     (* (GREF G3 :E3) (GREF G2 :E1E2E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E3) (GREF G1 :S) (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G2 :E3))
                         (* (GREF G3 :E2) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E2) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E2) (GREF G2 :E1E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :E2))
                         (* -1 (GREF G3 :E2) (GREF G1 :E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E1)))
                  (+ (* (GREF G3 :E2) (GREF G2 :E1E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :E3))
                     (* -1 (GREF G3 :E2) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2) (GREF G1 :S) (GREF G2 :E1E3))
                     (* (GREF G3 :E3) (GREF G2 :E1E2E3) (GREF G1 :E3))
                     (* (GREF G3 :E3) (GREF G1 :E1) (GREF G2 :E2))
                     (* -1 (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E3) (GREF G1 :S) (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E2) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E2) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G2 :E3))
                         (* (GREF G3 :E2) (GREF G2 :E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G1 :E2))
                         (* (GREF G3 :E2) (GREF G1 :E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S))
                         (* (GREF G1 :E1E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 E3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :E1E3) (GREF G2 :E1E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E3))
                     (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3) (GREF G1 :E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E2))
                     (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :E2))
                         (* (GREF G3 :E1E3) (GREF G1 :E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G3 :E1E3) (GREF G2 :E1E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :S) (GREF G2 :E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1E2))
                     (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3) (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G3 :E2E3) (GREF G2 :E1E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :S) (GREF G2 :E3))
                     (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3) (GREF G1 :E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E2) (GREF G2 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G3 :E2E3) (GREF G2 :E1E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1) (GREF G2 :E3))
                     (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E3) (GREF G1 :E3))
                     (* (GREF G3 :E1E2) (GREF G1 :E2) (GREF G2 :E2))
                     (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3) (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :E1))
                         (* (GREF G3 :E2E3) (GREF G1 :E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S))
                         (* (GREF G1 :E1E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* (GREF G3 :E1E3) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E3)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* (GREF G3 :E1E3) (GREF G1 :E1))
                       (* (GREF G3 :E2E3) (GREF G1 :E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                       (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                       (* (GREF G1 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                       (* (GREF G1 :E1E3) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1))
                       (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                       (* (GREF G3 :E1E3) (GREF G1 :E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                       (* (GREF G3 :E2E3) (GREF G1 :E1E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E3)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* (GREF G3 :E1E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E2)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E3))
                       (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E3) (GREF G2 :E2))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :S))
                       (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G2 :E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                       (* (GREF G3 :E1E3) (GREF G1 :E2)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E2E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2E3)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                       (* (GREF G3 :E2E3) (GREF G1 :E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                       (* (GREF G1 :E1) (GREF G2 :E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3))
                       (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E1))
                       (* (GREF G1 :E1E3) (GREF G2 :S))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2))
                       (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E2E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G2 :E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* (GREF G3 :E1E3) (GREF G1 :E1E2)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                       (* (GREF G3 :E2E3) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E3))
                       (* (GREF G1 :E1) (GREF G2 :E1E3))
                       (* (GREF G1 :E2) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))
                       (* (GREF G1 :E3) (GREF G2 :S))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E2))
                       (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)))
                    (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 E3) (G3 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                      (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                      (* (GREF G1 :E2) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                      (* (GREF G1 :E1E3) (GREF G2 :E2))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3))
                      (* -1 (GREF G1 :E2) (GREF G2 :E3))
                      (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                      (* (GREF G1 :E3) (GREF G2 :E2))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                      (* (GREF G1 :E1) (GREF G2 :E3))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3))
                      (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1))
                      (* (GREF G1 :E1E3) (GREF G2 :S))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E3))
                      (* (GREF G1 :E1) (GREF G2 :E1E3))
                      (* (GREF G1 :E2) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))
                      (* (GREF G1 :E3) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1) (GREF G2 :E2))
                      (* (GREF G1 :E2) (GREF G2 :E1))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :S))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1E2E3))
                      (* (GREF G1 :E1E3) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E2))
                      (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E2) (GREF G2 :S))
                      (* (GREF G1 :E1E2) (GREF G2 :E1))
                      (* (GREF G1 :E3) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E3))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1))
                      (* (GREF G1 :E1) (GREF G2 :S))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                      (* (GREF G1 :E1E2) (GREF G2 :E2))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E3) (GREF G2 :E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :S))
                      (* (GREF G1 :E1) (GREF G2 :E1))
                      (* (GREF G1 :E2) (GREF G2 :E2))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                      (* (GREF G1 :E3) (GREF G2 :E3))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3)))
                   (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 E3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :E1E3) (GREF G2 :E1E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E3))
                     (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* (GREF G3 :S) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                         (* (GREF G3 :S) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E1))
                         (* (GREF G3 :E1E2) (GREF G1 :E2))
                         (* (GREF G3 :E1E3) (GREF G1 :E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G3 :E1E3) (GREF G2 :E1E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :S) (GREF G2 :E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                         (* -1 (GREF G3 :S) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* (GREF G3 :S) (GREF G2 :E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                         (* (GREF G3 :S) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G3 :E2E3) (GREF G2 :E1E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :S) (GREF G2 :E3))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G3 :S) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E2) (GREF G2 :E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* (GREF G3 :S) (GREF G2 :E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E2))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :S) (GREF G2 :E1E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :E1))
                         (* (GREF G3 :S) (GREF G1 :E2))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G3 :E2E3) (GREF G2 :E1E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1) (GREF G2 :E3))
                     (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E2) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E1))
                         (* (GREF G3 :E1E2) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :S) (GREF G2 :E1E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* (GREF G3 :S) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* (GREF G3 :S) (GREF G2 :E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :E1))
                         (* -1 (GREF G3 :S) (GREF G1 :E2))
                         (* (GREF G3 :E2E3) (GREF G1 :E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S))
                         (* (GREF G1 :E1E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G3 :S) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :S) (GREF G2 :E1E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :E1))
                         (* (GREF G3 :E2E3) (GREF G1 :E2))
                         (* (GREF G3 :S) (GREF G1 :E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2E3) (GREF G1 :E2))
                     (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :E3))
                     (* (GREF G3 :S) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E2))
                         (* (GREF G3 :S) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E2))
                         (* -1 (GREF G3 :S) (GREF G1 :E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3) (GREF G1 :E2))
                     (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                         (* (GREF G3 :E2E3) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* (GREF G3 :E1E3) (GREF G1 :E2))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S))
                         (* (GREF G1 :E1E2E3) (GREF G2 :E1)))
                      (GREF G3 :S)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E2))
                         (* (GREF G3 :E1E2) (GREF G1 :E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 SE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :S))
                       (* (GREF G1 :E1) (GREF G3 :E1))
                       (* (GREF G1 :E2) (GREF G3 :E2))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2))
                       (* (GREF G1 :E3) (GREF G3 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E3))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :E2E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1))
                       (* (GREF G1 :E1) (GREF G3 :S))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E2))
                       (* (GREF G1 :E1E2) (GREF G3 :E2))
                       (* -1 (GREF G1 :E3) (GREF G3 :E1E3))
                       (* (GREF G1 :E1E3) (GREF G3 :E3))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E2))
                       (* (GREF G1 :E1) (GREF G3 :E1E2))
                       (* (GREF G1 :E2) (GREF G3 :S))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1))
                       (* -1 (GREF G1 :E3) (GREF G3 :E2E3))
                       (* (GREF G1 :E1E3) (GREF G3 :E1E2E3))
                       (* (GREF G1 :E2E3) (GREF G3 :E3)))
                    (GREF G2 :S))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1E2))
                       (* (GREF G1 :E1) (GREF G3 :E2))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1))
                       (* (GREF G1 :E1E2) (GREF G3 :S))
                       (* (GREF G1 :E3) (GREF G3 :E1E2E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E2E3))
                       (* (GREF G1 :E2E3) (GREF G3 :E1E3)))
                    (GREF G2 :S))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E3))
                       (* (GREF G1 :E1) (GREF G3 :E1E3))
                       (* (GREF G1 :E2) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2E3))
                       (* (GREF G1 :E3) (GREF G3 :S))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :E2)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1E3))
                       (* (GREF G1 :E1) (GREF G3 :E3))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E2E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E3) (GREF G3 :E1))
                       (* (GREF G1 :E1E3) (GREF G3 :S))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E2E3))
                       (* (GREF G1 :E1) (GREF G3 :E1E2E3))
                       (* (GREF G1 :E2) (GREF G3 :E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E3))
                       (* -1 (GREF G1 :E3) (GREF G3 :E2))
                       (* (GREF G1 :E1E3) (GREF G3 :E1E2))
                       (* (GREF G1 :E2E3) (GREF G3 :S)))
                    (GREF G2 :S))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1E2E3))
                       (* (GREF G1 :E1) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E3))
                       (* (GREF G1 :E3) (GREF G3 :E1E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E2))
                       (* (GREF G1 :E2E3) (GREF G3 :E1)))
                    (GREF G2 :S))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 SE3) (G3 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E1) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E2) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E3) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E1E3) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 SE3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :E1))
                       (* (GREF G1 :E2) (GREF G3 :E2)))
                    (GREF G2 :S))
                   (* (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1))
                       (* (GREF G1 :E1E2) (GREF G3 :E2)))
                    (GREF G2 :S))
                   (* (GREF G1 :E1E3) (GREF G2 :S) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E2))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1)))
                    (GREF G2 :S))
                   (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :E2))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1)))
                    (GREF G2 :S))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :E3))
                       (* -1 (GREF G1 :E3) (GREF G3 :E1)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G1 :E2) (GREF G3 :E3))
                       (* -1 (GREF G1 :E3) (GREF G3 :E2)))
                    (GREF G2 :S))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G3 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E2)))
                    (GREF G2 :S))
                   (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 SE3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2) (GREF G3 :E1E2))
                       (* -1 (GREF G1 :E3) (GREF G3 :E1E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :E1E2))
                       (* -1 (GREF G1 :E3) (GREF G3 :E2E3)))
                    (GREF G2 :S))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E2E3)))
                    (GREF G2 :S))
                   (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :E1E3))
                       (* (GREF G1 :E2) (GREF G3 :E2E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E2E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E3)))
                    (GREF G2 :S))
                   (* (GREF G1 :E1E3) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E3)))
                    (GREF G2 :S))
                   (* (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 SE3) (G3 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E2E3))
                  (* (GREF G1 :E1E3) (GREF G2 :S) (GREF G3 :E1E2E3))
                  (* (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E2) (GREF G2 :S) (GREF G3 :E1E2E3))
                  (* (GREF G1 :E1) (GREF G2 :S) (GREF G3 :E1E2E3))
                  (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 SE3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :S))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :S))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E2))
                       (* -1 (GREF G1 :E3) (GREF G3 :E1E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :E1E2))
                       (* (GREF G1 :E2) (GREF G3 :S))
                       (* -1 (GREF G1 :E3) (GREF G3 :E2E3)))
                    (GREF G2 :S))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1E2))
                       (* (GREF G1 :E1E2) (GREF G3 :S))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E2E3)))
                    (GREF G2 :S))
                   (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :E1E3))
                       (* (GREF G1 :E2) (GREF G3 :E2E3))
                       (* (GREF G1 :E3) (GREF G3 :S)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E2E3))
                       (* (GREF G1 :E1E3) (GREF G3 :S)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E3))
                       (* (GREF G1 :E1E3) (GREF G3 :E1E2)))
                    (GREF G2 :S))
                   (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E3))
                       (* (GREF G1 :E3) (GREF G3 :E1E2)))
                    (GREF G2 :S))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 VE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E3))
                       (* -1 (GREF G1 :E1) (GREF G3 :E1E3))
                       (* (GREF G3 :S) (GREF G1 :E3))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2E3))
                       (* -1 (GREF G1 :E2) (GREF G3 :E2E3)))
                    (GREF G2 :E3))
                   (* (GREF G3 :E1) (GREF G2 :E3) (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                       (* (GREF G3 :S) (GREF G1 :E2))
                       (* (GREF G3 :E1E3) (GREF G1 :E1E2E3))
                       (* (GREF G1 :E3) (GREF G3 :E2E3))
                       (* (GREF G3 :E1) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G2 :E3))
                       (* -1 (GREF G3 :E3) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G1 :S))
                       (* (GREF G3 :S) (GREF G1 :E1))
                       (* (GREF G3 :E1E2) (GREF G1 :E2))
                       (* (GREF G3 :E1E3) (GREF G1 :E3))
                       (* -1 (GREF G1 :E1E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G3 :E2) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E3) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                       (* (GREF G1 :E1E3) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :S) (GREF G3 :E1E3))
                       (* (GREF G1 :E1) (GREF G3 :E3))
                       (* (GREF G3 :E1) (GREF G1 :E3))
                       (* (GREF G3 :E2) (GREF G1 :E1E2E3))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E2E3)))
                    (GREF G2 :E3))
                   (* (GREF G3 :S) (GREF G2 :E3) (GREF G1 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                       (* (GREF G3 :E2) (GREF G1 :E1))
                       (* (GREF G3 :E1) (GREF G1 :E2))
                       (* -1 (GREF G3 :E3) (GREF G1 :E1E2E3))
                       (* (GREF G1 :E3) (GREF G3 :E1E2E3))
                       (* (GREF G3 :S) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :S) (GREF G1 :S))
                       (* (GREF G3 :E1) (GREF G1 :E1))
                       (* -1 (GREF G3 :E2) (GREF G1 :E2))
                       (* -1 (GREF G3 :E3) (GREF G1 :E3))
                       (* -1 (GREF G1 :E1E2E3) (GREF G3 :E1E2E3))
                       (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                       (* (GREF G3 :E1E3) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                       (* (GREF G1 :E1E3) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :S) (GREF G3 :E2E3))
                       (* (GREF G1 :E1) (GREF G3 :E1E2E3))
                       (* (GREF G3 :E2) (GREF G1 :E3))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1E2E3))
                       (* (GREF G1 :E2) (GREF G3 :E3)))
                    (GREF G2 :E3))
                   (* (GREF G3 :E1E2) (GREF G2 :E3) (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :S) (GREF G1 :S))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1))
                       (* (GREF G3 :E2) (GREF G1 :E2))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E2E3))
                       (* -1 (GREF G1 :E3) (GREF G3 :E3))
                       (* (GREF G3 :E1E2) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* (GREF G3 :S) (GREF G2 :E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                       (* (GREF G3 :E2) (GREF G1 :E1))
                       (* (GREF G3 :E1) (GREF G1 :E2))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E3))
                       (* (GREF G1 :E1E2E3) (GREF G3 :E3))
                       (* -1 (GREF G3 :S) (GREF G1 :E1E2))
                       (* (GREF G3 :E2E3) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                       (* (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1E2E3))
                       (* -1 (GREF G1 :E1) (GREF G3 :E2E3))
                       (* (GREF G3 :E1E2) (GREF G1 :E3))
                       (* (GREF G3 :S) (GREF G1 :E1E2E3))
                       (* (GREF G1 :E2) (GREF G3 :E1E3)))
                    (GREF G2 :E3))
                   (* (GREF G3 :E2) (GREF G2 :E3) (GREF G1 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G1 :S))
                       (* (GREF G3 :S) (GREF G1 :E1))
                       (* (GREF G3 :E1E2) (GREF G1 :E2))
                       (* (GREF G3 :E2E3) (GREF G1 :E1E2E3))
                       (* -1 (GREF G1 :E3) (GREF G3 :E1E3))
                       (* (GREF G3 :E2) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G2 :E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :S))
                       (* (GREF G3 :E1E2) (GREF G1 :E1))
                       (* -1 (GREF G3 :S) (GREF G1 :E2))
                       (* (GREF G3 :E2E3) (GREF G1 :E3))
                       (* (GREF G1 :E1E2E3) (GREF G3 :E1E3))
                       (* (GREF G3 :E1) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                       (* (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :S))
                       (* -1 (GREF G1 :E1) (GREF G3 :E1))
                       (* (GREF G3 :E3) (GREF G1 :E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E2E3))
                       (* -1 (GREF G1 :E2) (GREF G3 :E2)))
                    (GREF G2 :E3))
                   (* (GREF G3 :E1E3) (GREF G2 :E3) (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1))
                       (* (GREF G3 :E3) (GREF G1 :E2))
                       (* (GREF G3 :E1) (GREF G1 :E1E2E3))
                       (* (GREF G1 :E3) (GREF G3 :E2))
                       (* (GREF G3 :E1E3) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G2 :E3))
                       (* -1 (GREF G3 :S) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                       (* (GREF G3 :E3) (GREF G1 :E1))
                       (* (GREF G3 :E1E2E3) (GREF G1 :E2))
                       (* (GREF G3 :E1) (GREF G1 :E3))
                       (* -1 (GREF G1 :E1E2E3) (GREF G3 :E2))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :S) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                       (* (GREF G1 :E1E3) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :S) (GREF G3 :E1))
                       (* (GREF G1 :E1) (GREF G3 :S))
                       (* (GREF G3 :E1E3) (GREF G1 :E3))
                       (* (GREF G3 :E2E3) (GREF G1 :E1E2E3))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E2)))
                    (GREF G2 :E3))
                   (* (GREF G3 :E3) (GREF G2 :E3) (GREF G1 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E2E3) (GREF G1 :S))
                       (* (GREF G3 :E2E3) (GREF G1 :E1))
                       (* (GREF G3 :E1E3) (GREF G1 :E2))
                       (* -1 (GREF G3 :S) (GREF G1 :E1E2E3))
                       (* (GREF G1 :E3) (GREF G3 :E1E2))
                       (* (GREF G3 :E3) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :E3))
                       (* (GREF G3 :E1) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E3) (GREF G1 :S))
                       (* (GREF G3 :E1E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E2))
                       (* -1 (GREF G3 :S) (GREF G1 :E3))
                       (* -1 (GREF G1 :E1E2E3) (GREF G3 :E1E2))
                       (* (GREF G3 :E1E2E3) (GREF G1 :E1E2))
                       (* (GREF G3 :E1) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                       (* (GREF G1 :E1E3) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :S) (GREF G3 :E2))
                       (* (GREF G1 :E1) (GREF G3 :E1E2))
                       (* (GREF G3 :E2E3) (GREF G1 :E3))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2E3))
                       (* (GREF G1 :E2) (GREF G3 :S)))
                    (GREF G2 :E3))
                   (* (GREF G3 :E1E2E3) (GREF G2 :E3) (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                       (* (GREF G3 :E2E3) (GREF G1 :E2))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2E3))
                       (* -1 (GREF G1 :E3) (GREF G3 :S))
                       (* (GREF G3 :E1E2E3) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* (GREF G3 :E3) (GREF G2 :E3))
                       (* (GREF G3 :E2) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E1E2E3) (GREF G1 :S))
                       (* (GREF G3 :E2E3) (GREF G1 :E1))
                       (* (GREF G3 :E1E3) (GREF G1 :E2))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E3))
                       (* (GREF G1 :E1E2E3) (GREF G3 :S))
                       (* -1 (GREF G3 :E3) (GREF G1 :E1E2))
                       (* (GREF G3 :E2) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                       (* (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1E2))
                       (* -1 (GREF G1 :E1) (GREF G3 :E2))
                       (* (GREF G3 :E1E2E3) (GREF G1 :E3))
                       (* (GREF G3 :E3) (GREF G1 :E1E2E3))
                       (* (GREF G1 :E2) (GREF G3 :E1)))
                    (GREF G2 :E3))
                   (* (GREF G3 :E2E3) (GREF G2 :E3) (GREF G1 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                       (* (GREF G3 :E3) (GREF G1 :E1))
                       (* (GREF G3 :E1E2E3) (GREF G1 :E2))
                       (* (GREF G3 :E2) (GREF G1 :E1E2E3))
                       (* -1 (GREF G1 :E3) (GREF G3 :E1))
                       (* (GREF G3 :E2E3) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* (GREF G3 :E1E2E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E3) (GREF G1 :E2))
                       (* (GREF G3 :E2) (GREF G1 :E3))
                       (* (GREF G1 :E1E2E3) (GREF G3 :E1))
                       (* (GREF G3 :E1E3) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                       (* (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 VE3) (G3 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1))
                      (* (GREF G1 :E2) (GREF G2 :E2))
                      (* (GREF G1 :E3) (GREF G2 :E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1))
                      (* (GREF G1 :E1E2) (GREF G2 :E2))
                      (* (GREF G1 :E1E3) (GREF G2 :E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E2))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                      (* (GREF G1 :E2E3) (GREF G2 :E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E2))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1))
                      (* (GREF G1 :E1E2E3) (GREF G2 :E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E3))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E3))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E2) (GREF G2 :E3))
                      (* -1 (GREF G1 :E3) (GREF G2 :E2))
                      (* (GREF G1 :E1E2E3) (GREF G2 :E1)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                      (* (GREF G1 :E2E3) (GREF G2 :E1)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 VE3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :E1) (GREF G2 :E3) (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E2))
                         (* (GREF G3 :E1) (GREF G1 :S)))
                      (GREF G2 :E1))
                     (* (GREF G3 :E2) (GREF G2 :E3) (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G1 :E1E2))
                         (* (GREF G3 :E2) (GREF G1 :S)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                      (GREF G3 :E3)))
                  (+ (* (GREF G3 :E1) (GREF G2 :E3) (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G1 :E2) (GREF G3 :E2))
                         (* (GREF G3 :E1) (GREF G1 :E1)))
                      (GREF G2 :E1))
                     (* (GREF G3 :E2) (GREF G2 :E3) (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G1 :E2))
                         (* (GREF G3 :E2) (GREF G1 :E1)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2)))
                      (GREF G3 :E3)))
                  (+ (* (GREF G3 :E2) (GREF G2 :E3) (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G3 :E1))
                         (* (GREF G3 :E2) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (* -1 (GREF G3 :E1) (GREF G2 :E3) (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :E1))
                         (* (GREF G3 :E1) (GREF G1 :E2)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2))
                         (* (GREF G1 :E1E2E3) (GREF G2 :E1)))
                      (GREF G3 :E3)))
                  (+ (* (GREF G3 :E2) (GREF G2 :E3) (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G3 :E1))
                         (* (GREF G3 :E2) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (* -1 (GREF G3 :E1) (GREF G2 :E3) (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :S))
                         (* (GREF G3 :E1) (GREF G1 :E1E2)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E3)))
                  (+ (* -1 (GREF G1 :E1) (GREF G3 :E1) (GREF G2 :E3))
                     (* (GREF G3 :E3) (GREF G2 :E3) (GREF G1 :E3))
                     (* (GREF G3 :E3) (GREF G1 :E2) (GREF G2 :E2))
                     (* (GREF G3 :E1) (GREF G2 :E2) (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :E1))
                         (* (GREF G3 :E1) (GREF G1 :E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G1 :S) (GREF G3 :E1) (GREF G2 :E3))
                     (* (GREF G3 :E3) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E3) (GREF G1 :E1E2) (GREF G2 :E2))
                     (* (GREF G3 :E1) (GREF G2 :E2) (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :S))
                         (* (GREF G3 :E1) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G1 :S) (GREF G3 :E2) (GREF G2 :E3))
                     (* (GREF G3 :E3) (GREF G1 :S) (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G2 :E3))
                         (* (GREF G3 :E2) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E2) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1)))
                  (+ (* -1 (GREF G1 :E1) (GREF G3 :E2) (GREF G2 :E3))
                     (* (GREF G3 :E3) (GREF G1 :E1) (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G2 :E3))
                         (* (GREF G3 :E2) (GREF G2 :E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G1 :E2))
                         (* (GREF G3 :E2) (GREF G1 :E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2))
                         (* (GREF G1 :E1E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 VE3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1) (GREF G3 :E1E3) (GREF G2 :E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :E2))
                         (* (GREF G3 :E1E3) (GREF G1 :E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G1 :S) (GREF G3 :E1E3) (GREF G2 :E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G1 :S) (GREF G3 :E2E3) (GREF G2 :E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E2))
                     (* (GREF G3 :E2E3) (GREF G2 :E2) (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G1 :E1) (GREF G3 :E2E3) (GREF G2 :E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E3) (GREF G1 :E3))
                     (* (GREF G3 :E1E2) (GREF G1 :E2) (GREF G2 :E2))
                     (* (GREF G3 :E2E3) (GREF G2 :E2) (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :E1))
                         (* (GREF G3 :E2E3) (GREF G1 :E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2))
                         (* (GREF G1 :E1E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G3 :E1E3) (GREF G2 :E3) (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :S) (GREF G3 :E2E3))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (* (GREF G3 :E2E3) (GREF G2 :E3) (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E1E3) (GREF G2 :E3) (GREF G1 :E3))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G3 :E2E3))
                         (* (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (* (GREF G3 :E2E3) (GREF G2 :E3) (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E2)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E2E3) (GREF G2 :E3) (GREF G1 :E3))
                     (*
                      (+ (* (GREF G1 :E2) (GREF G3 :E1E3))
                         (* (GREF G3 :E2E3) (GREF G1 :E1)))
                      (GREF G2 :E1))
                     (* -1 (GREF G3 :E1E3) (GREF G2 :E3) (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E2E3) (GREF G2 :E3) (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G3 :E1E3))
                         (* (GREF G3 :E2E3) (GREF G1 :S)))
                      (GREF G2 :E1))
                     (* -1 (GREF G3 :E1E3) (GREF G2 :E3) (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :S)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                      (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 VE3) (G3 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                      (* (GREF G1 :E1E3) (GREF G2 :E2))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :E2) (GREF G2 :E3))
                      (* (GREF G1 :E3) (GREF G2 :E2))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E3))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E3))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E2))
                      (* (GREF G1 :E2) (GREF G2 :E1))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E2))
                      (* (GREF G1 :E1E2) (GREF G2 :E1))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1))
                      (* (GREF G1 :E1E2) (GREF G2 :E2))
                      (* (GREF G1 :E1E3) (GREF G2 :E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1))
                      (* (GREF G1 :E2) (GREF G2 :E2))
                      (* (GREF G1 :E3) (GREF G2 :E3)))
                   (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 VE3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1) (GREF G3 :E1E3) (GREF G2 :E3))
                     (* (GREF G3 :S) (GREF G2 :E3) (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                         (* (GREF G3 :S) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E1))
                         (* (GREF G3 :E1E2) (GREF G1 :E2))
                         (* (GREF G3 :E1E3) (GREF G1 :E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G1 :S) (GREF G3 :E1E3) (GREF G2 :E3))
                     (* (GREF G3 :S) (GREF G2 :E3) (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                         (* (GREF G3 :S) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G1 :S) (GREF G3 :E2E3) (GREF G2 :E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E3) (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :S) (GREF G2 :E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E2))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G1 :E1) (GREF G3 :E2E3) (GREF G2 :E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E3) (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E1))
                         (* (GREF G3 :E1E2) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :S) (GREF G2 :E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :E1))
                         (* -1 (GREF G3 :S) (GREF G1 :E2))
                         (* (GREF G3 :E2E3) (GREF G1 :E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2))
                         (* (GREF G1 :E1E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G1 :S) (GREF G3 :S) (GREF G2 :E3))
                     (* (GREF G3 :E1E3) (GREF G2 :E3) (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G1 :E1) (GREF G3 :S) (GREF G2 :E3))
                     (* (GREF G3 :E1E3) (GREF G2 :E3) (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E2))
                         (* -1 (GREF G3 :S) (GREF G1 :E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G1 :E1) (GREF G3 :E1E2) (GREF G2 :E3))
                     (* (GREF G3 :E2E3) (GREF G2 :E3) (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                         (* (GREF G3 :E2E3) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* (GREF G3 :E1E3) (GREF G1 :E2))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2))
                         (* (GREF G1 :E1E2E3) (GREF G2 :E1)))
                      (GREF G3 :S)))
                  (+ (* (GREF G1 :S) (GREF G3 :E1E2) (GREF G2 :E3))
                     (* (GREF G3 :E2E3) (GREF G2 :E3) (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 BVE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G1 :E1E2E3))
                       (* -1 (GREF G3 :S) (GREF G1 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2))
                       (* (GREF G3 :E1E2) (GREF G1 :E1E3))
                       (* -1 (GREF G1 :S) (GREF G3 :E2E3)))
                    (GREF G2 :E2E3))
                   (* (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E2))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :E1E2E3))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                       (* -1 (GREF G3 :S) (GREF G1 :E1E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E2E3))
                       (* (GREF G3 :E3) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E3))
                       (* (GREF G1 :E2E3) (GREF G3 :E1E3))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                       (* -1 (GREF G3 :S) (GREF G1 :E1E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E2E3))
                       (* (GREF G3 :E2) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                       (* (GREF G1 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :S) (GREF G1 :E1E2E3))
                       (* -1 (GREF G3 :E1) (GREF G1 :E2E3))
                       (* (GREF G3 :E3) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E2) (GREF G1 :E1E3))
                       (* -1 (GREF G1 :S) (GREF G3 :E1E2E3)))
                    (GREF G2 :E2E3))
                   (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2E3))
                       (* (GREF G3 :E2) (GREF G1 :E2E3))
                       (* (GREF G3 :E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E1E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G1 :E1E2E3) (GREF G3 :E1E3))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :E3))
                       (* (GREF G3 :E2) (GREF G1 :S))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E2E3))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                       (* -1 (GREF G3 :S) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                       (* (GREF G1 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2E3))
                       (* -1 (GREF G3 :E2) (GREF G1 :E2E3))
                       (* (GREF G3 :E1E2E3) (GREF G1 :E1E2))
                       (* (GREF G3 :E1) (GREF G1 :E1E3))
                       (* (GREF G1 :S) (GREF G3 :E3)))
                    (GREF G2 :E2E3))
                   (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E2))
                   (*
                    (+ (* (GREF G3 :S) (GREF G1 :E1E2E3))
                       (* -1 (GREF G3 :E1) (GREF G1 :E2E3))
                       (* (GREF G3 :E1E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E2) (GREF G1 :E1E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E3))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G1 :E1E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2E3))
                       (* -1 (GREF G3 :E1) (GREF G1 :S))
                       (* -1 (GREF G3 :E2) (GREF G1 :E1E2))
                       (* (GREF G1 :E1E3) (GREF G3 :E3))
                       (* (GREF G3 :S) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G1 :E1E2E3))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :S) (GREF G1 :E1E3))
                       (* (GREF G1 :S) (GREF G3 :E1E3)))
                    (GREF G2 :E2E3))
                   (* (GREF G3 :E1E2E3) (GREF G2 :E2E3) (GREF G1 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G1 :E1E2E3))
                       (* (GREF G3 :S) (GREF G1 :E2E3))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E1E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E3))
                       (* (GREF G3 :E1E2E3) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E1E2E3))
                       (* (GREF G1 :E2E3) (GREF G3 :E2E3))
                       (* (GREF G3 :S) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2))
                       (* (GREF G1 :E1E3) (GREF G3 :E1E3))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1))
                       (* -1 (GREF G3 :E2) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2E3))
                       (* -1 (GREF G3 :E3) (GREF G1 :E2E3))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1E2))
                       (* (GREF G3 :E1E2E3) (GREF G1 :E1E3))
                       (* -1 (GREF G1 :S) (GREF G3 :E2)))
                    (GREF G2 :E2E3))
                   (* (GREF G3 :S) (GREF G2 :E2E3) (GREF G1 :E2))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :E1E2E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E2E3))
                       (* -1 (GREF G3 :E1) (GREF G1 :S))
                       (* -1 (GREF G3 :E3) (GREF G1 :E1E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E2))
                       (* (GREF G3 :S) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :S))
                       (* (GREF G1 :E2E3) (GREF G3 :E1))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E3) (GREF G1 :E1E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E2))
                       (* (GREF G3 :E2E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                       (* (GREF G1 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E3) (GREF G1 :E1E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E2E3))
                       (* (GREF G3 :S) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3))
                       (* -1 (GREF G1 :S) (GREF G3 :E1E2)))
                    (GREF G2 :E2E3))
                   (* -1 (GREF G3 :E1) (GREF G2 :E2E3) (GREF G1 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E2E3))
                       (* (GREF G3 :E2E3) (GREF G1 :E2E3))
                       (* (GREF G3 :S) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (*
                    (+ (* (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E3) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G1 :E1E2E3) (GREF G3 :E1))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :S))
                       (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E2))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E3) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                       (* (GREF G1 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E2E3))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E2E3))
                       (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                       (* (GREF G3 :E1E3) (GREF G1 :E1E3))
                       (* (GREF G1 :S) (GREF G3 :S)))
                    (GREF G2 :E2E3))
                   (* -1 (GREF G3 :E2) (GREF G2 :E2E3) (GREF G1 :E2))
                   (*
                    (+ (* (GREF G3 :E3) (GREF G1 :E1E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E2E3))
                       (* (GREF G3 :E1E2) (GREF G1 :S))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :S))
                       (* -1 (GREF G3 :E2) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G1 :E1E2E3) (GREF G3 :E2))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2))
                       (* (GREF G1 :E1E3) (GREF G3 :S))
                       (* (GREF G3 :E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E2E3))
                       (* -1 (GREF G3 :E2) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E3) (GREF G1 :E1E3))
                       (* (GREF G1 :S) (GREF G3 :E1)))
                    (GREF G2 :E2E3))
                   (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2E3))
                       (* (GREF G3 :E3) (GREF G1 :E2E3))
                       (* -1 (GREF G3 :E2) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1))
                       (* (GREF G3 :E1E2) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (*
                    (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E1E2))
                       (* (GREF G1 :E2E3) (GREF G3 :E2))
                       (* (GREF G3 :E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E2))
                       (* (GREF G1 :E1E3) (GREF G3 :E1))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 BVE3) (G3 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E3) (GREF G2 :E2E3))
                      (* (GREF G1 :E1E2E3) (GREF G2 :E1E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                      (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                      (* (GREF G1 :E2) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                      (* (GREF G1 :E3) (GREF G2 :E1E2)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 BVE3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :E1) (GREF G1 :E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E3) (GREF G3 :E2) (GREF G2 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E2E3)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                         (* (GREF G1 :E2) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)))
                      (GREF G3 :E3)))
                  (+ (* -1 (GREF G3 :E1) (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E1E3) (GREF G3 :E2) (GREF G2 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E2E3)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :S))
                         (* -1 (GREF G3 :E1) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                      (GREF G3 :E3)))
                  (+ (* -1 (GREF G3 :E2) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E2E3) (GREF G3 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G1 :S))
                         (* -1 (GREF G3 :E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E3)))
                  (+ (* -1 (GREF G3 :E2) (GREF G1 :E1E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E1E2E3) (GREF G3 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E3)))
                  (+ (* -1 (GREF G3 :E3) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G3 :E1) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1) (GREF G1 :S) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E3) (GREF G2 :E1E3) (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E1))
                         (* -1 (GREF G3 :E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G3 :E3) (GREF G1 :E1E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G3 :E1) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E3) (GREF G2 :E1E3) (GREF G1 :E3))
                     (*
                      (+ (* (GREF G1 :E1E2E3) (GREF G3 :E1))
                         (* -1 (GREF G3 :E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3) (GREF G1 :E2))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :E1E2E3))
                         (* -1 (GREF G3 :E2) (GREF G1 :E1)))
                      (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E3))
                     (*
                      (+ (* (GREF G1 :E1E2E3) (GREF G3 :E2))
                         (* (GREF G3 :E3) (GREF G1 :E1)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :E2E3))
                         (* -1 (GREF G3 :E2) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E2))
                         (* (GREF G3 :E3) (GREF G1 :S)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 BVE3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :S)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1)))
                      (GREF G2 :E1E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E3))
                     (*
                      (+ (* (GREF G1 :E1E2E3) (GREF G3 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3) (GREF G1 :E3))
                     (*
                      (+ (* (GREF G1 :E1E2E3) (GREF G3 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3) (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E1E2E3) (GREF G3 :E2E3) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E2E3) (GREF G3 :E2E3) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E3) (GREF G3 :E1E3) (GREF G2 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G1 :E3))
                       (* (GREF G3 :E1E2) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (*
                    (+ (* (GREF G1 :E3) (GREF G3 :E1E3))
                       (* (GREF G3 :E1E2) (GREF G1 :E2)))
                    (GREF G2 :E2E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E2))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2E3)))
                    (GREF G2 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 BVE3) (G3 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                      (* (GREF G1 :E2) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                      (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                      (* (GREF G1 :E2) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                      (* (GREF G1 :E1E3) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                      (* (GREF G1 :E3) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                   (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 BVE3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :S) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :S) (GREF G1 :E1E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G1 :E1E2E3) (GREF G3 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                         (* -1 (GREF G3 :S) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E2))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E1E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G1 :E1E2E3) (GREF G3 :E2E3))
                         (* (GREF G3 :S) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E2E3))
                         (* (GREF G3 :S) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2E3) (GREF G2 :E2E3))
                     (* (GREF G3 :S) (GREF G2 :E2E3) (GREF G1 :E2))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1E2E3))
                         (* (GREF G3 :S) (GREF G1 :E1)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* (GREF G3 :S) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E2E3))
                         (* (GREF G3 :S) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G1 :E2E3) (GREF G3 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E2E3))
                         (* (GREF G3 :E1E2) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :S)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2E3) (GREF G2 :E2E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2E3))
                         (* (GREF G3 :E1E2) (GREF G1 :E1)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 IE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :S))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :E1))
                       (* (GREF G1 :E1E3) (GREF G3 :E2))
                       (* -1 (GREF G1 :E3) (GREF G3 :E1E2))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E3))
                       (* (GREF G1 :E2) (GREF G3 :E1E3))
                       (* -1 (GREF G1 :E1) (GREF G3 :E2E3)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E1))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :S))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E2))
                       (* (GREF G1 :E3) (GREF G3 :E2))
                       (* (GREF G1 :E1E2) (GREF G3 :E1E3))
                       (* -1 (GREF G1 :E2) (GREF G3 :E3))
                       (* -1 (GREF G1 :E1) (GREF G3 :E1E2E3)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E2))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2))
                       (* (GREF G1 :E1E3) (GREF G3 :S))
                       (* -1 (GREF G1 :E3) (GREF G3 :E1))
                       (* (GREF G1 :E1E2) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E2E3))
                       (* (GREF G1 :E1) (GREF G3 :E3)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E1E2))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1))
                       (* (GREF G1 :E3) (GREF G3 :S))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2E3))
                       (* (GREF G1 :E2) (GREF G3 :E2E3))
                       (* (GREF G1 :E1) (GREF G3 :E1E3)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E3))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :E1E3))
                       (* (GREF G1 :E1E3) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E3) (GREF G3 :E1E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :S))
                       (* (GREF G1 :E2) (GREF G3 :E1))
                       (* -1 (GREF G1 :E1) (GREF G3 :E2)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E1E3))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E2E3))
                       (* (GREF G1 :E3) (GREF G3 :E2E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E1))
                       (* -1 (GREF G1 :E2) (GREF G3 :S))
                       (* -1 (GREF G1 :E1) (GREF G3 :E1E2)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2E3))
                       (* (GREF G1 :E1E3) (GREF G3 :E3))
                       (* -1 (GREF G1 :E3) (GREF G3 :E1E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E2))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E2))
                       (* (GREF G1 :E1) (GREF G3 :S)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E1E2E3))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E3))
                       (* (GREF G1 :E3) (GREF G3 :E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2))
                       (* (GREF G1 :E2) (GREF G3 :E2))
                       (* (GREF G1 :E1) (GREF G3 :E1)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 IE3) (G3 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :S))
                  (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3) (GREF G3 :S))
                  (* (GREF G1 :E1E3) (GREF G2 :E1E2E3) (GREF G3 :S))
                  (* (GREF G1 :E3) (GREF G2 :E1E2E3) (GREF G3 :S))
                  (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :S))
                  (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3) (GREF G3 :S))
                  (* (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :S))
                  (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 IE3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1))
                       (* (GREF G1 :E1E3) (GREF G3 :E2)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E1))
                       (* (GREF G1 :E3) (GREF G3 :E2)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E2))
                       (* -1 (GREF G1 :E3) (GREF G3 :E1)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E3))
                       (* (GREF G1 :E2) (GREF G3 :E1)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E1)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1E3) (GREF G3 :E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E2)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* (GREF G1 :E3) (GREF G3 :E3))
                       (* (GREF G1 :E2) (GREF G3 :E2)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 IE3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E3) (GREF G3 :E1E2))
                       (* (GREF G1 :E2) (GREF G3 :E1E3)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E3) (GREF G3 :E1E2))
                       (* (GREF G1 :E1E2) (GREF G3 :E1E3)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2))
                       (* (GREF G1 :E1E2) (GREF G3 :E2E3)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E1E2))
                       (* (GREF G1 :E2) (GREF G3 :E2E3)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E3))
                       (* (GREF G1 :E1E3) (GREF G3 :E2E3)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E1E3))
                       (* (GREF G1 :E3) (GREF G3 :E2E3)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E3) (GREF G3 :E1E3)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E3)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 IE3) (G3 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E3) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3)
                     (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 IE3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :S))
                       (* -1 (GREF G1 :E3) (GREF G3 :E1E2))
                       (* (GREF G1 :E2) (GREF G3 :E1E3)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :S))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E2))
                       (* (GREF G1 :E1E2) (GREF G3 :E1E3)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2))
                       (* (GREF G1 :E1E3) (GREF G3 :S))
                       (* (GREF G1 :E1E2) (GREF G3 :E2E3)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E1E2))
                       (* (GREF G1 :E3) (GREF G3 :S))
                       (* (GREF G1 :E2) (GREF G3 :E2E3)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E3))
                       (* (GREF G1 :E1E3) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :S)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E1E3))
                       (* (GREF G1 :E3) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G3 :S)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E3) (GREF G3 :E1E3))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E2)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 RE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2))
                       (* (GREF G3 :E1E2) (GREF G1 :E1E3))
                       (* -1 (GREF G3 :S) (GREF G1 :E2E3))
                       (* -1 (GREF G1 :S) (GREF G3 :E2E3)))
                    (GREF G2 :E2E3))
                   (* (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                       (* -1 (GREF G3 :S) (GREF G1 :E1E3))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E2E3))
                       (* (GREF G3 :E3) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                       (* -1 (GREF G3 :S) (GREF G1 :E1E2))
                       (* (GREF G3 :E1E3) (GREF G1 :E2E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E2E3))
                       (* (GREF G3 :E2) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G2 :E2E3))
                       (* (GREF G3 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E3) (GREF G2 :E1E2)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* (GREF G3 :S) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1E3))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :E2E3))
                       (* (GREF G3 :E1) (GREF G1 :E1))
                       (* (GREF G3 :E2) (GREF G1 :E2))
                       (* (GREF G3 :E3) (GREF G1 :E3)))
                    (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                       (* (GREF G1 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                       (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                    (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* (GREF G3 :E3) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E2) (GREF G1 :E1E3))
                       (* -1 (GREF G3 :E1) (GREF G1 :E2E3))
                       (* -1 (GREF G1 :S) (GREF G3 :E1E2E3)))
                    (GREF G2 :E2E3))
                   (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E2))
                   (*
                    (+ (* (GREF G3 :E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1E3))
                       (* (GREF G3 :E2) (GREF G1 :E2E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E1E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :S))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E3) (GREF G1 :E2E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E2E3))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                       (* -1 (GREF G3 :S) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G1 :S))
                       (* (GREF G3 :E2) (GREF G1 :E1E2))
                       (* (GREF G3 :E3) (GREF G1 :E1E3))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2E3))
                       (* (GREF G3 :S) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E2))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E3)))
                    (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                       (* (GREF G1 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                       (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                    (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G3 :E1E2E3) (GREF G1 :E1E2))
                       (* (GREF G3 :E1) (GREF G1 :E1E3))
                       (* -1 (GREF G3 :E2) (GREF G1 :E2E3))
                       (* (GREF G1 :S) (GREF G3 :E3)))
                    (GREF G2 :E2E3))
                   (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E2))
                   (*
                    (+ (* (GREF G3 :E1E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E2) (GREF G1 :E1E3))
                       (* -1 (GREF G3 :E1) (GREF G1 :E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E3))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G1 :S))
                       (* -1 (GREF G3 :E2) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E2E3))
                       (* (GREF G1 :E1E3) (GREF G3 :E3))
                       (* (GREF G3 :S) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                       (* (GREF G3 :S) (GREF G2 :E1E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :S))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1E2))
                       (* (GREF G3 :E1E2E3) (GREF G1 :E1E3))
                       (* (GREF G1 :E2E3) (GREF G3 :E3))
                       (* (GREF G3 :E1E2) (GREF G1 :E1))
                       (* (GREF G3 :S) (GREF G1 :E2))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E3)))
                    (GREF G2 :S))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E3) (GREF G2 :E1E2))
                       (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                    (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :S) (GREF G1 :E1E3))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3))
                       (* (GREF G1 :S) (GREF G3 :E1E3)))
                    (GREF G2 :E2E3))
                   (* (GREF G3 :E1E2E3) (GREF G2 :E2E3) (GREF G1 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E1E3))
                       (* (GREF G3 :S) (GREF G1 :E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E3))
                       (* (GREF G3 :E1E2E3) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G3 :S) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2))
                       (* (GREF G3 :E2E3) (GREF G1 :E2E3))
                       (* (GREF G1 :E1E3) (GREF G3 :E1E3))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1))
                       (* -1 (GREF G3 :E2) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                       (* (GREF G3 :S) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3))
                       (* (GREF G1 :E2E3) (GREF G3 :E1E3))
                       (* (GREF G3 :E2) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1) (GREF G1 :E2))
                       (* (GREF G3 :E1E2E3) (GREF G1 :E3)))
                    (GREF G2 :S))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E3) (GREF G2 :E1E2))
                       (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                    (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G1 :E1E2))
                       (* (GREF G3 :E1E2E3) (GREF G1 :E1E3))
                       (* -1 (GREF G3 :E3) (GREF G1 :E2E3))
                       (* -1 (GREF G1 :S) (GREF G3 :E2)))
                    (GREF G2 :E2E3))
                   (* (GREF G3 :S) (GREF G2 :E2E3) (GREF G1 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G1 :S))
                       (* -1 (GREF G3 :E3) (GREF G1 :E1E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E2E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E2))
                       (* (GREF G3 :S) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E3) (GREF G1 :E1E2))
                       (* (GREF G3 :E1) (GREF G1 :E2E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E2))
                       (* (GREF G3 :E2E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :S) (GREF G2 :E1E2)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* (GREF G3 :E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1E3))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :E2))
                       (* (GREF G3 :E1E3) (GREF G1 :E1))
                       (* (GREF G3 :E2E3) (GREF G1 :E2))
                       (* (GREF G3 :S) (GREF G1 :E3)))
                    (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                       (* (GREF G1 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                       (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G3 :S) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E2E3))
                       (* -1 (GREF G1 :S) (GREF G3 :E1E2)))
                    (GREF G2 :E2E3))
                   (* -1 (GREF G3 :E1) (GREF G2 :E2E3) (GREF G1 :E2))
                   (*
                    (+ (* (GREF G3 :S) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1E3))
                       (* (GREF G3 :E2E3) (GREF G1 :E2E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (*
                    (+ (* (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E3) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :S) (GREF G1 :E2E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E2))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E3) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3))
                       (* (GREF G3 :E1) (GREF G2 :E1E2)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                       (* (GREF G3 :E2E3) (GREF G1 :E1E2))
                       (* (GREF G3 :S) (GREF G1 :E1E3))
                       (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2))
                       (* (GREF G3 :E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E2))
                       (* -1 (GREF G3 :E1) (GREF G1 :E3)))
                    (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                       (* (GREF G1 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                       (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                    (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                       (* (GREF G3 :E1E3) (GREF G1 :E1E3))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E2E3))
                       (* (GREF G1 :S) (GREF G3 :S)))
                    (GREF G2 :E2E3))
                   (* -1 (GREF G3 :E2) (GREF G2 :E2E3) (GREF G1 :E2))
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :S))
                       (* -1 (GREF G3 :E2) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3))
                       (* (GREF G1 :E1E3) (GREF G3 :S))
                       (* (GREF G3 :E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                       (* (GREF G3 :E3) (GREF G2 :E1E3))
                       (* (GREF G3 :E2) (GREF G2 :E1E2)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2))
                       (* (GREF G3 :E1E2) (GREF G1 :E1E3))
                       (* (GREF G1 :E2E3) (GREF G3 :S))
                       (* (GREF G3 :E1E2E3) (GREF G1 :E1))
                       (* (GREF G3 :E3) (GREF G1 :E2))
                       (* -1 (GREF G3 :E2) (GREF G1 :E3)))
                    (GREF G2 :S))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E3) (GREF G2 :E1E2))
                       (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                    (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E3) (GREF G1 :E1E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E2E3))
                       (* (GREF G1 :S) (GREF G3 :E1)))
                    (GREF G2 :E2E3))
                   (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E3))
                       (* (GREF G3 :E3) (GREF G1 :E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1))
                       (* (GREF G3 :E1E2) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (*
                    (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G3 :E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E2))
                       (* (GREF G3 :E2) (GREF G1 :E2E3))
                       (* (GREF G1 :E1E3) (GREF G3 :E1))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* (GREF G3 :E1E2E3) (GREF G1 :S))
                       (* (GREF G3 :E3) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E2) (GREF G1 :E1E3))
                       (* (GREF G1 :E2E3) (GREF G3 :E1))
                       (* (GREF G3 :E2E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E2))
                       (* (GREF G3 :E1E2) (GREF G1 :E3)))
                    (GREF G2 :S))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E3) (GREF G2 :E1E2))
                       (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                    (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 RE3) (G3 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :S))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                      (* (GREF G1 :E2) (GREF G2 :S))
                      (* -1 (GREF G1 :E3) (GREF G2 :E2E3))
                      (* (GREF G1 :E1E2E3) (GREF G2 :E1E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                      (* (GREF G1 :E1E2) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                      (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                      (* (GREF G1 :E2) (GREF G2 :E2E3))
                      (* (GREF G1 :E3) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                      (* (GREF G1 :E1E3) (GREF G2 :S))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                      (* (GREF G1 :E2E3) (GREF G2 :S)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                      (* (GREF G1 :E3) (GREF G2 :E1E2))
                      (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 RE3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E2E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G1 :E1))
                       (* (GREF G3 :E2) (GREF G1 :E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E2E3)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                       (* (GREF G1 :E2) (GREF G2 :E2E3))
                       (* (GREF G1 :E3) (GREF G2 :S))
                       (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)))
                    (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E2E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G1 :S))
                       (* (GREF G3 :E2) (GREF G1 :E1E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E2E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :S))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                       (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                       (* (GREF G1 :E1E3) (GREF G2 :S))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                    (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G1 :S))
                       (* -1 (GREF G3 :E2) (GREF G1 :E1E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :S))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                       (* (GREF G1 :E2E3) (GREF G2 :S)))
                    (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G1 :E1))
                       (* -1 (GREF G3 :E2) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E3)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1) (GREF G1 :E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E3) (GREF G2 :E1E2))
                       (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                    (GREF G3 :E3)))
                  (+ (* -1 (GREF G3 :E1) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1) (GREF G1 :S) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E3) (GREF G2 :E1E3) (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E1) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G3 :E1) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E3) (GREF G2 :E1E3) (GREF G1 :E3))
                     (* -1 (GREF G3 :E3) (GREF G1 :E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E1) (GREF G2 :E1E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1) (GREF G1 :E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E3))
                     (* (GREF G3 :E3) (GREF G1 :E1) (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E2) (GREF G2 :E1E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :E2))
                         (* -1 (GREF G3 :E2) (GREF G1 :E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E1)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2) (GREF G1 :S) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E3) (GREF G1 :S) (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E2) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E2) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 RE3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3) (GREF G1 :E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3) (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E3)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* (GREF G3 :E1E3) (GREF G1 :E1))
                       (* (GREF G3 :E2E3) (GREF G1 :E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                       (* (GREF G1 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                       (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                       (* (GREF G3 :E2E3) (GREF G1 :E1E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                       (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E2E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                       (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                       (* (GREF G1 :E1E3) (GREF G2 :S))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E2E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                       (* (GREF G1 :E2) (GREF G2 :E2E3))
                       (* (GREF G1 :E3) (GREF G2 :S))
                       (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)))
                    (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 RE3) (G3 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                      (* (GREF G1 :E2) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                      (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                      (* (GREF G1 :E1E3) (GREF G2 :S))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                      (* (GREF G1 :E2) (GREF G2 :E2E3))
                      (* (GREF G1 :E3) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :S))
                      (* (GREF G1 :E1E3) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E2) (GREF G2 :S))
                      (* (GREF G1 :E3) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :S))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                   (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 E3) (G2 RE3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                         (* -1 (GREF G3 :S) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :S) (GREF G2 :E1E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :E1))
                         (* (GREF G3 :S) (GREF G1 :E2))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :S) (GREF G2 :E1E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* (GREF G3 :S) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G3 :S) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :E1))
                         (* (GREF G3 :E2E3) (GREF G1 :E2))
                         (* (GREF G3 :S) (GREF G1 :E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :S) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E2))
                         (* (GREF G3 :S) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :S)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2)))
                      (GREF G1 :E1E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E2))
                         (* (GREF G3 :E1E2) (GREF G1 :E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 E3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :S))
                       (* (GREF G2 :E1) (GREF G3 :E1))
                       (* (GREF G2 :E2) (GREF G3 :E2))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2))
                       (* (GREF G2 :E3) (GREF G3 :E3))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1))
                       (* (GREF G2 :E1) (GREF G3 :S))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1E2))
                       (* (GREF G2 :E1E2) (GREF G3 :E2))
                       (* -1 (GREF G2 :E3) (GREF G3 :E1E3))
                       (* (GREF G2 :E1E3) (GREF G3 :E3))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E1E2E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E2))
                       (* (GREF G2 :E1) (GREF G3 :E1E2))
                       (* (GREF G2 :E2) (GREF G3 :S))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1))
                       (* -1 (GREF G2 :E3) (GREF G3 :E2E3))
                       (* (GREF G2 :E1E3) (GREF G3 :E1E2E3))
                       (* (GREF G2 :E2E3) (GREF G3 :E3)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1E2))
                       (* (GREF G2 :E1) (GREF G3 :E2))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1))
                       (* (GREF G2 :E1E2) (GREF G3 :S))
                       (* (GREF G2 :E3) (GREF G3 :E1E2E3))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E2E3))
                       (* (GREF G2 :E2E3) (GREF G3 :E1E3)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E3))
                       (* (GREF G2 :E1) (GREF G3 :E1E3))
                       (* (GREF G2 :E2) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2E3))
                       (* (GREF G2 :E3) (GREF G3 :S))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E2)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1E3))
                       (* (GREF G2 :E1) (GREF G3 :E3))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1E2E3))
                       (* (GREF G2 :E1E2) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E3) (GREF G3 :E1))
                       (* (GREF G2 :E1E3) (GREF G3 :S))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E1E2)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E2E3))
                       (* (GREF G2 :E1) (GREF G3 :E1E2E3))
                       (* (GREF G2 :E2) (GREF G3 :E3))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E3))
                       (* -1 (GREF G2 :E3) (GREF G3 :E2))
                       (* (GREF G2 :E1E3) (GREF G3 :E1E2))
                       (* (GREF G2 :E2E3) (GREF G3 :S)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1E2E3))
                       (* (GREF G2 :E1) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1E3))
                       (* (GREF G2 :E1E2) (GREF G3 :E3))
                       (* (GREF G2 :E3) (GREF G3 :E1E2))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E2))
                       (* (GREF G2 :E2E3) (GREF G3 :E1)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 E3) (G3 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E1) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E2) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E3) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E1E3) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 E3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E1))
                       (* (GREF G2 :E2) (GREF G3 :E2)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1))
                       (* (GREF G2 :E1E2) (GREF G3 :E2)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E1E3) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E2))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E2))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E3))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E3))
                       (* -1 (GREF G2 :E3) (GREF G3 :E1)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :E2) (GREF G3 :E3))
                       (* -1 (GREF G2 :E3) (GREF G3 :E2)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1E2) (GREF G3 :E3))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E2)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 E3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2) (GREF G3 :E1E2))
                       (* -1 (GREF G2 :E3) (GREF G3 :E1E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E1E2))
                       (* -1 (GREF G2 :E3) (GREF G3 :E2E3)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1E2))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E2E3)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E1E3))
                       (* (GREF G2 :E2) (GREF G3 :E2E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1E3))
                       (* (GREF G2 :E1E2) (GREF G3 :E2E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E3)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E1E3) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1E3)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 E3) (G3 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E2E3))
                  (* (GREF G1 :S) (GREF G2 :E1E3) (GREF G3 :E1E2E3))
                  (* (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :S) (GREF G2 :E2) (GREF G3 :E1E2E3))
                  (* (GREF G1 :S) (GREF G2 :E1) (GREF G3 :E1E2E3))
                  (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 E3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :S))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :S))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1E2))
                       (* -1 (GREF G2 :E3) (GREF G3 :E1E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E1E2))
                       (* (GREF G2 :E2) (GREF G3 :S))
                       (* -1 (GREF G2 :E3) (GREF G3 :E2E3)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1E2))
                       (* (GREF G2 :E1E2) (GREF G3 :S))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E2E3)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E1E3))
                       (* (GREF G2 :E2) (GREF G3 :E2E3))
                       (* (GREF G2 :E3) (GREF G3 :S)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1E3))
                       (* (GREF G2 :E1E2) (GREF G3 :E2E3))
                       (* (GREF G2 :E1E3) (GREF G3 :S)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E3))
                       (* (GREF G2 :E1E3) (GREF G3 :E1E2)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1E3))
                       (* (GREF G2 :E3) (GREF G3 :E1E2)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 SE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E2))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E3))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E3))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E2E3))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 SE3) (G3 SE3))
  (MAKE-INSTANCE 'SE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 SE3) (G3 VE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E2))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E3))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 SE3) (G3 BVE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E2E3))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E3))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 SE3) (G3 IE3))
  (MAKE-INSTANCE 'IE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 SE3) (G3 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E2E3))
                         (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E3))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 VE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E1))
                       (* (GREF G2 :E2) (GREF G3 :E2)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :S))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1E2)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E1E2))
                       (* (GREF G2 :E2) (GREF G3 :S)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E2))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E1E3))
                       (* (GREF G2 :E2) (GREF G3 :E2E3)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E3) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E3))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1E2E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E1E2E3))
                       (* (GREF G2 :E2) (GREF G3 :E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1E3)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 VE3) (G3 SE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E2) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E3) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 VE3) (G3 VE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E1))
                       (* (GREF G2 :E2) (GREF G3 :E2)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E3)))
                  (+ (* (GREF G2 :E1) (GREF G3 :E2) (GREF G1 :S))
                     (* -1 (GREF G1 :S) (GREF G2 :E2) (GREF G3 :E1)))
                  (+ (* (GREF G2 :E2) (GREF G3 :E3) (GREF G1 :S))
                     (* -1 (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E2)))
                  (+ (* (GREF G2 :E1) (GREF G3 :E3) (GREF G1 :S))
                     (* -1 (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 VE3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* -1 (GREF G2 :E2) (GREF G3 :E1E2) (GREF G1 :S))
                            (* -1 (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E1E3)))
                         (+ (* (GREF G2 :E1) (GREF G3 :E1E2) (GREF G1 :S))
                            (* -1 (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E2E3)))
                         0
                         (+ (* (GREF G2 :E1) (GREF G3 :E1E3) (GREF G1 :S))
                            (* (GREF G1 :S) (GREF G2 :E2) (GREF G3 :E2E3)))
                         0 0
                         (+
                          (*
                           (+ (* (GREF G2 :E1) (GREF G3 :E2E3))
                              (* -1 (GREF G2 :E2) (GREF G3 :E1E3)))
                           (GREF G1 :S))
                          (* (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 VE3) (G3 IE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E1E2E3))
                         (* (GREF G1 :S) (GREF G2 :E1) (GREF G3 :E1E2E3))
                         (* -1 (GREF G1 :S) (GREF G2 :E2) (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 VE3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (*
                           (+ (* (GREF G2 :E1) (GREF G3 :S))
                              (* -1 (GREF G2 :E2) (GREF G3 :E1E2)))
                           (GREF G1 :S))
                          (* -1 (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E1E3)))
                         (+
                          (*
                           (+ (* (GREF G2 :E1) (GREF G3 :E1E2))
                              (* (GREF G2 :E2) (GREF G3 :S)))
                           (GREF G1 :S))
                          (* -1 (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E2E3)))
                         0
                         (+
                          (*
                           (+ (* (GREF G2 :E1) (GREF G3 :E1E3))
                              (* (GREF G2 :E2) (GREF G3 :E2E3)))
                           (GREF G1 :S))
                          (* (GREF G1 :S) (GREF G2 :E3) (GREF G3 :S)))
                         0 0
                         (+
                          (*
                           (+ (* (GREF G2 :E1) (GREF G3 :E2E3))
                              (* -1 (GREF G2 :E2) (GREF G3 :E1E3)))
                           (GREF G1 :S))
                          (* (GREF G1 :S) (GREF G2 :E3) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 BVE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1E2) (GREF G3 :E2))
                       (* (GREF G2 :E1E3) (GREF G3 :E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1))
                       (* (GREF G2 :E1E3) (GREF G3 :E1E2E3)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1E2) (GREF G3 :S))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E2E3)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2E3))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1E2) (GREF G3 :E2E3))
                       (* (GREF G2 :E1E3) (GREF G3 :S)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1E3))
                       (* (GREF G2 :E1E3) (GREF G3 :E1E2)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1E2) (GREF G3 :E3))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E2)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 BVE3) (G3 SE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E1E3) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 BVE3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* (GREF G2 :E1E2) (GREF G3 :E2) (GREF G1 :S))
                            (* (GREF G1 :S) (GREF G2 :E1E3) (GREF G3 :E3)))
                         (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1) (GREF G1 :S))
                            (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E3)))
                         0
                         (+ (* -1 (GREF G2 :E1E3) (GREF G3 :E1) (GREF G1 :S))
                            (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E2)))
                         0 0
                         (+
                          (*
                           (+ (* (GREF G2 :E1E2) (GREF G3 :E3))
                              (* -1 (GREF G2 :E1E3) (GREF G3 :E2)))
                           (GREF G1 :S))
                          (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 BVE3) (G3 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G2 :E1E3) (GREF G3 :E2E3) (GREF G1 :S))
                     (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1E3) (GREF G1 :S))
                     (* (GREF G1 :S) (GREF G2 :E1E3) (GREF G3 :E1E2)))
                  (+ (* (GREF G2 :E1E2) (GREF G3 :E2E3) (GREF G1 :S))
                     (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 BVE3) (G3 IE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E2E3))
                         (* (GREF G1 :S) (GREF G2 :E1E3) (GREF G3 :E1E2E3))
                         (* -1 (GREF G1 :S) (GREF G2 :E1E2)
                            (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 BVE3) (G3 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1E2) (GREF G3 :S))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E2E3)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1E3))
                       (* (GREF G2 :E1E3) (GREF G3 :E1E2)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1E2) (GREF G3 :E2E3))
                       (* (GREF G2 :E1E3) (GREF G3 :S)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 IE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E2E3))
                  (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E3))
                  (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E3))
                  (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E2))
                  (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E2))
                  (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1))
                  (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 IE3) (G3 SE3))
  (MAKE-INSTANCE 'IE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 IE3) (G3 VE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E3))
                         (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1))
                         (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E2))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 IE3) (G3 BVE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E2E3))
                         (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E3))
                         (* -1 (GREF G1 :S) (GREF G2 :E1E2E3)
                            (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 IE3) (G3 IE3))
  (MAKE-INSTANCE 'SE3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 IE3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E2E3))
                         (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E3)) 0
                         (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E2))
                         0 0 (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 RE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :S))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1))
                       (* (GREF G2 :E1E2) (GREF G3 :E2))
                       (* (GREF G2 :E1E3) (GREF G3 :E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E2))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1))
                       (* (GREF G2 :E1E3) (GREF G3 :E1E2E3)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1E2))
                       (* (GREF G2 :E1E2) (GREF G3 :S))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E2E3)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E3))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2E3))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1E3))
                       (* (GREF G2 :E1E2) (GREF G3 :E2E3))
                       (* (GREF G2 :E1E3) (GREF G3 :S)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E3))
                       (* (GREF G2 :E1E3) (GREF G3 :E1E2)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1E2E3))
                       (* (GREF G2 :E1E2) (GREF G3 :E3))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E2)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 RE3) (G3 SE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :S))
                         (* (GREF G1 :S) (GREF G2 :E1E3) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 RE3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (*
                           (+ (* (GREF G2 :S) (GREF G3 :E1))
                              (* (GREF G2 :E1E2) (GREF G3 :E2)))
                           (GREF G1 :S))
                          (* (GREF G1 :S) (GREF G2 :E1E3) (GREF G3 :E3)))
                         (+
                          (*
                           (+ (* (GREF G2 :S) (GREF G3 :E2))
                              (* -1 (GREF G2 :E1E2) (GREF G3 :E1)))
                           (GREF G1 :S))
                          (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E3)))
                         0
                         (+
                          (*
                           (+ (* (GREF G2 :S) (GREF G3 :E3))
                              (* -1 (GREF G2 :E1E3) (GREF G3 :E1)))
                           (GREF G1 :S))
                          (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E2)))
                         0 0
                         (+
                          (*
                           (+ (* (GREF G2 :E1E2) (GREF G3 :E3))
                              (* -1 (GREF G2 :E1E3) (GREF G3 :E2)))
                           (GREF G1 :S))
                          (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 RE3) (G3 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1E2))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E2E3)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E3)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E1E3) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1E3))
                       (* (GREF G2 :E1E2) (GREF G3 :E2E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 RE3) (G3 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E2E3))
                         (* (GREF G1 :S) (GREF G2 :E1E3) (GREF G3 :E1E2E3)) 0
                         (* -1 (GREF G1 :S) (GREF G2 :E1E2) (GREF G3 :E1E2E3))
                         0 0 (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 SE3) (G2 RE3) (G3 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :S))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1E2))
                       (* (GREF G2 :E1E2) (GREF G3 :S))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E2E3)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E3))
                       (* (GREF G2 :E1E3) (GREF G3 :E1E2)))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1E3))
                       (* (GREF G2 :E1E2) (GREF G3 :E2E3))
                       (* (GREF G2 :E1E3) (GREF G3 :S)))
                    (GREF G1 :S))
                   (* -1 (GREF G1 :S) (GREF G2 :E2E3) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 E3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G3 :E1) (GREF G2 :S))
                       (* (GREF G3 :S) (GREF G2 :E1))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E2))
                       (* -1 (GREF G2 :E1E2E3) (GREF G3 :E2E3)))
                    (GREF G1 :E1))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G2 :S))
                       (* (GREF G3 :E1E2) (GREF G2 :E1))
                       (* (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :S) (GREF G2 :E2))
                       (* -1 (GREF G2 :E3) (GREF G3 :E2E3))
                       (* (GREF G3 :E3) (GREF G2 :E2E3)))
                    (GREF G1 :E2))
                   (* (GREF G3 :E3) (GREF G1 :E1) (GREF G2 :E1E3))
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E3))
                       (* (GREF G2 :E1) (GREF G3 :E1E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                       (* (GREF G3 :S) (GREF G2 :E3))
                       (* (GREF G2 :E2) (GREF G3 :E2E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                       (* (GREF G1 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* (GREF G3 :S) (GREF G2 :S))
                       (* (GREF G3 :E1) (GREF G2 :E1))
                       (* (GREF G3 :E3) (GREF G2 :E3))
                       (* (GREF G3 :E2) (GREF G2 :E2))
                       (* -1 (GREF G2 :E1E2E3) (GREF G3 :E1E2E3)))
                    (GREF G1 :E1))
                   (*
                    (+ (* -1 (GREF G3 :E1E2) (GREF G2 :S))
                       (* -1 (GREF G3 :E2) (GREF G2 :E1))
                       (* -1 (GREF G3 :E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1) (GREF G2 :E2))
                       (* -1 (GREF G2 :E3) (GREF G3 :E1E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3)))
                    (GREF G1 :E2))
                   (* -1 (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E1E3))
                   (*
                    (+ (* -1 (GREF G2 :S) (GREF G3 :E1E3))
                       (* -1 (GREF G2 :E1) (GREF G3 :E3))
                       (* (GREF G3 :E2) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1) (GREF G2 :E3))
                       (* (GREF G2 :E2) (GREF G3 :E1E2E3))
                       (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                       (* -1 (GREF G3 :S) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                       (* (GREF G1 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G2 :S))
                       (* (GREF G3 :E2) (GREF G2 :E1))
                       (* (GREF G3 :E1E2E3) (GREF G2 :E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E2))
                       (* (GREF G2 :E1E2E3) (GREF G3 :E3)))
                    (GREF G1 :E1))
                   (*
                    (+ (* (GREF G3 :S) (GREF G2 :S))
                       (* (GREF G3 :E1) (GREF G2 :E1))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E2) (GREF G2 :E2))
                       (* (GREF G2 :E3) (GREF G3 :E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3)))
                    (GREF G1 :E2))
                   (* -1 (GREF G3 :E2E3) (GREF G1 :E1) (GREF G2 :E1E3))
                   (*
                    (+ (* -1 (GREF G2 :S) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E1) (GREF G3 :E1E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E2) (GREF G2 :E3))
                       (* -1 (GREF G2 :E2) (GREF G3 :E3))
                       (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G3 :S) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G3 :E2) (GREF G2 :S))
                       (* (GREF G3 :E1E2) (GREF G2 :E1))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E3))
                       (* (GREF G3 :S) (GREF G2 :E2))
                       (* (GREF G2 :E1E2E3) (GREF G3 :E1E3)))
                    (GREF G1 :E1))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G2 :S))
                       (* -1 (GREF G3 :S) (GREF G2 :E1))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1E2) (GREF G2 :E2))
                       (* (GREF G2 :E3) (GREF G3 :E1E3))
                       (* (GREF G3 :E1E2E3) (GREF G2 :E2E3)))
                    (GREF G1 :E2))
                   (* (GREF G3 :E1E2E3) (GREF G1 :E1) (GREF G2 :E1E3))
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1E2E3))
                       (* (GREF G2 :E1) (GREF G3 :E2E3))
                       (* (GREF G3 :S) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1E2) (GREF G2 :E3))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1E3))
                       (* (GREF G3 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G1 :E1))
                       (* -1 (GREF G3 :E2) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G3 :E1E3) (GREF G2 :S))
                       (* (GREF G3 :E3) (GREF G2 :E1))
                       (* -1 (GREF G3 :E1) (GREF G2 :E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E2))
                       (* -1 (GREF G2 :E1E2E3) (GREF G3 :E2)))
                    (GREF G1 :E1))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G2 :S))
                       (* (GREF G3 :E1E2E3) (GREF G2 :E1))
                       (* (GREF G3 :E1) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E3) (GREF G2 :E2))
                       (* -1 (GREF G2 :E3) (GREF G3 :E2))
                       (* (GREF G3 :S) (GREF G2 :E2E3)))
                    (GREF G1 :E2))
                   (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :E1E3))
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :S))
                       (* (GREF G2 :E1) (GREF G3 :E1))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E3) (GREF G2 :E3))
                       (* (GREF G2 :E2) (GREF G3 :E2))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                       (* (GREF G1 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G3 :E3) (GREF G2 :S))
                       (* (GREF G3 :E1E3) (GREF G2 :E1))
                       (* (GREF G3 :S) (GREF G2 :E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E2))
                       (* -1 (GREF G2 :E1E2E3) (GREF G3 :E1E2)))
                    (GREF G1 :E1))
                   (*
                    (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :S))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E1))
                       (* -1 (GREF G3 :S) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E2))
                       (* -1 (GREF G2 :E3) (GREF G3 :E1E2))
                       (* -1 (GREF G3 :E1) (GREF G2 :E2E3)))
                    (GREF G1 :E2))
                   (* -1 (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :E1E3))
                   (*
                    (+ (* -1 (GREF G2 :S) (GREF G3 :E1))
                       (* -1 (GREF G2 :E1) (GREF G3 :S))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E3))
                       (* (GREF G2 :E2) (GREF G3 :E1E2))
                       (* (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E3) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E3) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                       (* (GREF G1 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G3 :E1E2E3) (GREF G2 :S))
                       (* (GREF G3 :E2E3) (GREF G2 :E1))
                       (* (GREF G3 :E1E2) (GREF G2 :E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E2))
                       (* (GREF G2 :E1E2E3) (GREF G3 :S)))
                    (GREF G1 :E1))
                   (*
                    (+ (* (GREF G3 :E3) (GREF G2 :S))
                       (* (GREF G3 :E1E3) (GREF G2 :E1))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E2))
                       (* (GREF G2 :E3) (GREF G3 :S))
                       (* -1 (GREF G3 :E2) (GREF G2 :E2E3)))
                    (GREF G1 :E2))
                   (* -1 (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :E1E3))
                   (*
                    (+ (* -1 (GREF G2 :S) (GREF G3 :E2))
                       (* -1 (GREF G2 :E1) (GREF G3 :E1E2))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E3))
                       (* -1 (GREF G2 :E2) (GREF G3 :S))
                       (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* (GREF G3 :E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G2 :S))
                       (* (GREF G3 :E1E2E3) (GREF G2 :E1))
                       (* -1 (GREF G3 :E2) (GREF G2 :E3))
                       (* (GREF G3 :E3) (GREF G2 :E2))
                       (* (GREF G2 :E1E2E3) (GREF G3 :E1)))
                    (GREF G1 :E1))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :S))
                       (* -1 (GREF G3 :E3) (GREF G2 :E1))
                       (* (GREF G3 :E2) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1E2E3) (GREF G2 :E2))
                       (* (GREF G2 :E3) (GREF G3 :E1))
                       (* (GREF G3 :E1E2) (GREF G2 :E2E3)))
                    (GREF G1 :E2))
                   (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1E3))
                   (*
                    (+ (* (GREF G2 :S) (GREF G3 :E1E2))
                       (* (GREF G2 :E1) (GREF G3 :E2))
                       (* (GREF G3 :E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1E2E3) (GREF G2 :E3))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1))
                       (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 E3) (G3 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1))
                      (* (GREF G1 :E2) (GREF G2 :E2))
                      (* (GREF G1 :E3) (GREF G2 :E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :S))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                      (* (GREF G1 :E2) (GREF G2 :S))
                      (* -1 (GREF G1 :E3) (GREF G2 :E2E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E2))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1))
                      (* (GREF G1 :E3) (GREF G2 :E1E2E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                      (* (GREF G1 :E2) (GREF G2 :E2E3))
                      (* (GREF G1 :E3) (GREF G2 :S)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E3))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1E2E3))
                      (* (GREF G1 :E2) (GREF G2 :E3))
                      (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                      (* (GREF G1 :E3) (GREF G2 :E1E2)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 E3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G2 :E1E2) (GREF G3 :E2) (GREF G1 :E1))
                     (* -1 (GREF G3 :E1) (GREF G2 :E1E2) (GREF G1 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E2E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G1 :E1))
                         (* (GREF G3 :E2) (GREF G1 :E2)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                         (* (GREF G1 :E2) (GREF G2 :E2E3))
                         (* (GREF G1 :E3) (GREF G2 :S)))
                      (GREF G3 :E3)))
                  (+ (* (GREF G2 :E2) (GREF G3 :E2) (GREF G1 :E1))
                     (* (GREF G3 :E1) (GREF G2 :E2) (GREF G1 :E2))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G2 :E3))
                         (* (GREF G3 :E2) (GREF G2 :E1E2E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2) (GREF G1 :E2)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1)))
                      (GREF G3 :E3)))
                  (+ (* (GREF G3 :E2) (GREF G2 :E1) (GREF G1 :E1))
                     (* (GREF G2 :E1) (GREF G3 :E1) (GREF G1 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E2) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G1 :E1))
                         (* (GREF G3 :E2) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E3)))
                  (+ (* (GREF G3 :E2) (GREF G2 :S) (GREF G1 :E1))
                     (* -1 (GREF G2 :S) (GREF G3 :E1) (GREF G1 :E2))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E3)))
                  (+ (* (GREF G3 :E3) (GREF G2 :E1) (GREF G1 :E1))
                     (* (GREF G3 :E1) (GREF G2 :E1E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :E3))
                     (*
                      (+ (* (GREF G2 :E1) (GREF G3 :E1))
                         (* (GREF G3 :E3) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (* (GREF G3 :E3) (GREF G1 :E2) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :E3) (GREF G2 :S) (GREF G1 :E1))
                     (* -1 (GREF G3 :E1) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G2 :S) (GREF G3 :E1))
                         (* -1 (GREF G3 :E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (* -1 (GREF G3 :E3) (GREF G1 :E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G3 :E3) (GREF G2 :S))
                       (* -1 (GREF G3 :E2) (GREF G2 :E2E3)))
                    (GREF G1 :E2))
                   (* -1 (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :E1E3))
                   (*
                    (+ (* -1 (GREF G2 :S) (GREF G3 :E2))
                       (* -1 (GREF G3 :E3) (GREF G2 :E2E3)))
                    (GREF G1 :E3))
                   (* (GREF G3 :E3) (GREF G1 :E1) (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E3) (GREF G2 :E1))
                       (* (GREF G3 :E2) (GREF G2 :E1E2E3)))
                    (GREF G1 :E2))
                   (* -1 (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :E3))
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E2))
                       (* (GREF G3 :E3) (GREF G2 :E1E2E3)))
                    (GREF G1 :E3))
                   (* (GREF G3 :E3) (GREF G1 :E1) (GREF G2 :E2))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E1E2E3))
                       (* (GREF G1 :E2) (GREF G2 :E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                    (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 E3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G2 :E1))
                       (* (GREF G3 :E1E3) (GREF G2 :E1E2E3)))
                    (GREF G1 :E2))
                   (* -1 (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E3))
                   (*
                    (+ (* (GREF G2 :E1) (GREF G3 :E1E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3)))
                    (GREF G1 :E3))
                   (* -1 (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E3))
                       (* (GREF G1 :E3) (GREF G2 :E2)))
                    (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E1E2) (GREF G2 :S))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3)))
                    (GREF G1 :E2))
                   (* -1 (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E1E3))
                   (*
                    (+ (* -1 (GREF G2 :S) (GREF G3 :E1E3))
                       (* (GREF G3 :E1E2) (GREF G2 :E2E3)))
                    (GREF G1 :E3))
                   (* -1 (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                       (* (GREF G1 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :E2E3)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :S) (GREF G1 :E1))
                     (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G2 :S) (GREF G3 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E2) (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E1) (GREF G1 :E1))
                     (* (GREF G3 :E2E3) (GREF G2 :E1E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1) (GREF G2 :E3))
                     (*
                      (+ (* (GREF G2 :E1) (GREF G3 :E2E3))
                         (* (GREF G3 :E1E2) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (* (GREF G3 :E1E2) (GREF G1 :E2) (GREF G2 :E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G3 :E1E3) (GREF G2 :S) (GREF G1 :E1))
                     (* (GREF G2 :S) (GREF G3 :E2E3) (GREF G1 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E1E3) (GREF G2 :E1) (GREF G1 :E1))
                     (* -1 (GREF G2 :E1) (GREF G3 :E2E3) (GREF G1 :E2))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G2 :E2) (GREF G3 :E1E3) (GREF G1 :E1))
                     (* (GREF G3 :E2E3) (GREF G2 :E2) (GREF G1 :E2))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G2 :E1E2) (GREF G3 :E1E3) (GREF G1 :E1))
                     (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2) (GREF G1 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E2E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                         (* (GREF G1 :E2) (GREF G2 :E2E3))
                         (* (GREF G1 :E3) (GREF G2 :S)))
                      (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 E3) (G3 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                      (* (GREF G1 :E2) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3))
                      (* -1 (GREF G1 :E2) (GREF G2 :E3))
                      (* (GREF G1 :E3) (GREF G2 :E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E3))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                      (* (GREF G1 :E2) (GREF G2 :E2E3))
                      (* (GREF G1 :E3) (GREF G2 :S)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E2))
                      (* (GREF G1 :E2) (GREF G2 :E1))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1E2E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E2) (GREF G2 :S))
                      (* (GREF G1 :E3) (GREF G2 :E2E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :S))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1))
                      (* (GREF G1 :E2) (GREF G2 :E2))
                      (* (GREF G1 :E3) (GREF G2 :E3)))
                   (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 E3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :S) (GREF G2 :E1) (GREF G1 :E1))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G2 :E1))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2E3)))
                      (GREF G1 :E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E3))
                     (*
                      (+ (* (GREF G2 :E1) (GREF G3 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* (GREF G3 :S) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                         (* (GREF G3 :S) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E2E3)))
                  (+ (* (GREF G3 :S) (GREF G2 :S) (GREF G1 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G2 :S) (GREF G3 :E1E3))
                         (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                         (* -1 (GREF G3 :S) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2E3)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :S) (GREF G1 :E1))
                     (*
                      (+ (* (GREF G3 :S) (GREF G2 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G2 :S) (GREF G3 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E1) (GREF G1 :E1))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E1))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2E3)))
                      (GREF G1 :E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1) (GREF G2 :E3))
                     (*
                      (+ (* (GREF G2 :E1) (GREF G3 :E2E3))
                         (* (GREF G3 :S) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E2) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E1))
                         (* (GREF G3 :E1E2) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G3 :E1E3) (GREF G2 :S) (GREF G1 :E1))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G2 :S))
                         (* (GREF G3 :S) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G2 :S) (GREF G3 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E1E3) (GREF G2 :E1) (GREF G1 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E2E3)))
                      (GREF G1 :E2))
                     (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :E3))
                     (*
                      (+ (* -1 (GREF G2 :E1) (GREF G3 :S))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E2E3) (GREF G2 :E1) (GREF G1 :E1))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E1))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3)))
                      (GREF G1 :E2))
                     (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E3))
                     (*
                      (+ (* -1 (GREF G2 :E1) (GREF G3 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                         (* (GREF G3 :E2E3) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :S)))
                  (+ (* (GREF G3 :E2E3) (GREF G2 :S) (GREF G1 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :S))
                         (* (GREF G3 :E1E2) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G2 :S) (GREF G3 :E1E2))
                         (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 SE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :E1))
                       (* (GREF G1 :E2) (GREF G3 :E2)))
                    (GREF G2 :S))
                   (* (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :S))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E2)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :E1E2))
                       (* (GREF G1 :E2) (GREF G3 :S)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :E2))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1)))
                    (GREF G2 :S))
                   (* (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :E1E3))
                       (* (GREF G1 :E2) (GREF G3 :E2E3)))
                    (GREF G2 :S))
                   (* (GREF G1 :E3) (GREF G2 :S) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :E3))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E2E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :E1E2E3))
                       (* (GREF G1 :E2) (GREF G3 :E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E3)))
                    (GREF G2 :S))
                   (* (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 SE3) (G3 SE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* (GREF G1 :E1) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E2) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E3) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 SE3) (G3 VE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G1 :E1) (GREF G3 :E1))
                       (* (GREF G1 :E2) (GREF G3 :E2)))
                    (GREF G2 :S))
                   (* (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E3)))
                  (+ (* (GREF G1 :E1) (GREF G3 :E2) (GREF G2 :S))
                     (* -1 (GREF G1 :E2) (GREF G2 :S) (GREF G3 :E1)))
                  (+ (* (GREF G1 :E2) (GREF G3 :E3) (GREF G2 :S))
                     (* -1 (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E2)))
                  (+ (* (GREF G1 :E1) (GREF G3 :E3) (GREF G2 :S))
                     (* -1 (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 SE3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* -1 (GREF G1 :E2) (GREF G3 :E1E2) (GREF G2 :S))
                            (* -1 (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E1E3)))
                         (+ (* (GREF G1 :E1) (GREF G3 :E1E2) (GREF G2 :S))
                            (* -1 (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E2E3)))
                         0
                         (+ (* (GREF G1 :E1) (GREF G3 :E1E3) (GREF G2 :S))
                            (* (GREF G1 :E2) (GREF G2 :S) (GREF G3 :E2E3)))
                         0 0
                         (+
                          (*
                           (+ (* (GREF G1 :E1) (GREF G3 :E2E3))
                              (* -1 (GREF G1 :E2) (GREF G3 :E1E3)))
                           (GREF G2 :S))
                          (* (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 SE3) (G3 IE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E1E2E3))
                         (* (GREF G1 :E1) (GREF G2 :S) (GREF G3 :E1E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :S) (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 SE3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (*
                           (+ (* (GREF G1 :E1) (GREF G3 :S))
                              (* -1 (GREF G1 :E2) (GREF G3 :E1E2)))
                           (GREF G2 :S))
                          (* -1 (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E1E3)))
                         (+
                          (*
                           (+ (* (GREF G1 :E1) (GREF G3 :E1E2))
                              (* (GREF G1 :E2) (GREF G3 :S)))
                           (GREF G2 :S))
                          (* -1 (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E2E3)))
                         0
                         (+
                          (*
                           (+ (* (GREF G1 :E1) (GREF G3 :E1E3))
                              (* (GREF G1 :E2) (GREF G3 :E2E3)))
                           (GREF G2 :S))
                          (* (GREF G1 :E3) (GREF G2 :S) (GREF G3 :S)))
                         0 0
                         (+
                          (*
                           (+ (* (GREF G1 :E1) (GREF G3 :E2E3))
                              (* -1 (GREF G1 :E2) (GREF G3 :E1E3)))
                           (GREF G2 :S))
                          (* (GREF G1 :E3) (GREF G2 :S) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 VE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G3 :E1E2) (GREF G2 :E1) (GREF G1 :E2))
                     (* -1 (GREF G1 :E1) (GREF G3 :E1E3) (GREF G2 :E3))
                     (*
                      (+ (* (GREF G2 :E1) (GREF G3 :E1E3))
                         (* (GREF G3 :S) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                         (* (GREF G3 :S) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E2E3)))
                  (+ (* (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :E1))
                     (* -1 (GREF G3 :E2) (GREF G2 :E1) (GREF G1 :E2))
                     (* (GREF G1 :E1) (GREF G3 :E3) (GREF G2 :E3))
                     (*
                      (+ (* -1 (GREF G2 :E1) (GREF G3 :E3))
                         (* (GREF G3 :E1) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :E1))
                         (* (GREF G3 :E1) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E1E2E3)))
                  (+ (* (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G3 :E1) (GREF G2 :E1) (GREF G1 :E2))
                     (* (GREF G1 :E1) (GREF G3 :E1E2E3) (GREF G2 :E3))
                     (*
                      (+ (* -1 (GREF G2 :E1) (GREF G3 :E1E2E3))
                         (* (GREF G3 :E2) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G1 :E1))
                         (* (GREF G3 :E2) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E3)))
                  (+ (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1))
                     (* -1 (GREF G3 :S) (GREF G2 :E1) (GREF G1 :E2))
                     (* -1 (GREF G1 :E1) (GREF G3 :E2E3) (GREF G2 :E3))
                     (*
                      (+ (* (GREF G2 :E1) (GREF G3 :E2E3))
                         (* (GREF G3 :E1E2) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E1))
                         (* (GREF G3 :E1E2) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G3 :E3) (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G3 :E1E2E3) (GREF G2 :E1) (GREF G1 :E2))
                     (* -1 (GREF G1 :E1) (GREF G3 :E1) (GREF G2 :E3))
                     (*
                      (+ (* (GREF G2 :E1) (GREF G3 :E1))
                         (* (GREF G3 :E3) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1))
                         (* (GREF G3 :E3) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E1))
                     (* -1 (GREF G3 :E2E3) (GREF G2 :E1) (GREF G1 :E2))
                     (* (GREF G1 :E1) (GREF G3 :S) (GREF G2 :E3))
                     (*
                      (+ (* -1 (GREF G2 :E1) (GREF G3 :S))
                         (* (GREF G3 :E1E3) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E2E3) (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G3 :E1E3) (GREF G2 :E1) (GREF G1 :E2))
                     (* (GREF G1 :E1) (GREF G3 :E1E2) (GREF G2 :E3))
                     (*
                      (+ (* -1 (GREF G2 :E1) (GREF G3 :E1E2))
                         (* (GREF G3 :E2E3) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                         (* (GREF G3 :E2E3) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :S)))
                  (+ (* (GREF G3 :E1E2E3) (GREF G1 :E1) (GREF G2 :E1))
                     (* -1 (GREF G3 :E3) (GREF G2 :E1) (GREF G1 :E2))
                     (* -1 (GREF G1 :E1) (GREF G3 :E2) (GREF G2 :E3))
                     (*
                      (+ (* (GREF G2 :E1) (GREF G3 :E2))
                         (* (GREF G3 :E1E2E3) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :E1))
                         (* (GREF G3 :E1E2E3) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 VE3) (G3 SE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1))
                      (* (GREF G1 :E2) (GREF G2 :E2))
                      (* (GREF G1 :E3) (GREF G2 :E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E2))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E2) (GREF G2 :E3))
                      (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E3))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 VE3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* (GREF G3 :E1) (GREF G2 :E2) (GREF G1 :E2))
                            (* (GREF G2 :E2) (GREF G3 :E2) (GREF G1 :E1))
                            (* (GREF G3 :E1) (GREF G2 :E3) (GREF G1 :E3))
                            (*
                             (+ (* -1 (GREF G1 :E2) (GREF G3 :E2))
                                (* (GREF G3 :E1) (GREF G1 :E1)))
                             (GREF G2 :E1))
                            (*
                             (+ (* (GREF G1 :E1) (GREF G2 :E3))
                                (* -1 (GREF G1 :E3) (GREF G2 :E1)))
                             (GREF G3 :E3)))
                         (+ (* (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :E1))
                            (* (GREF G2 :E1) (GREF G3 :E1) (GREF G1 :E2))
                            (* (GREF G3 :E2) (GREF G2 :E3) (GREF G1 :E3))
                            (*
                             (+ (* -1 (GREF G1 :E1) (GREF G3 :E1))
                                (* (GREF G3 :E2) (GREF G1 :E2)))
                             (GREF G2 :E2))
                            (*
                             (+ (* (GREF G1 :E2) (GREF G2 :E3))
                                (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                             (GREF G3 :E3)))
                         0
                         (+ (* (GREF G3 :E3) (GREF G1 :E1) (GREF G2 :E1))
                            (* -1 (GREF G1 :E1) (GREF G3 :E1) (GREF G2 :E3))
                            (*
                             (+ (* (GREF G2 :E1) (GREF G3 :E1))
                                (* (GREF G3 :E3) (GREF G2 :E3)))
                             (GREF G1 :E3))
                            (* (GREF G3 :E3) (GREF G1 :E2) (GREF G2 :E2))
                            (*
                             (+ (* -1 (GREF G1 :E2) (GREF G2 :E3))
                                (* (GREF G1 :E3) (GREF G2 :E2)))
                             (GREF G3 :E2)))
                         0 0
                         (+ (* -1 (GREF G3 :E3) (GREF G2 :E1) (GREF G1 :E2))
                            (* -1 (GREF G1 :E1) (GREF G3 :E2) (GREF G2 :E3))
                            (* (GREF G2 :E1) (GREF G3 :E2) (GREF G1 :E3))
                            (* (GREF G3 :E3) (GREF G1 :E1) (GREF G2 :E2))
                            (*
                             (+ (* (GREF G1 :E2) (GREF G2 :E3))
                                (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                             (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 VE3) (G3 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E1) (GREF G1 :E2))
                     (* -1 (GREF G1 :E1) (GREF G3 :E1E3) (GREF G2 :E3))
                     (* (GREF G2 :E1) (GREF G3 :E1E3) (GREF G1 :E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E2E3)))
                  (+ (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1))
                     (* -1 (GREF G1 :E1) (GREF G3 :E2E3) (GREF G2 :E3))
                     (*
                      (+ (* (GREF G2 :E1) (GREF G3 :E2E3))
                         (* (GREF G3 :E1E2) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (* (GREF G3 :E1E2) (GREF G1 :E2) (GREF G2 :E2))
                     (*
                      (+ (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G3 :E2E3) (GREF G2 :E2) (GREF G1 :E2))
                     (* -1 (GREF G2 :E2) (GREF G3 :E1E3) (GREF G1 :E1))
                     (* (GREF G3 :E2E3) (GREF G2 :E3) (GREF G1 :E3))
                     (*
                      (+ (* (GREF G1 :E2) (GREF G3 :E1E3))
                         (* (GREF G3 :E2E3) (GREF G1 :E1)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E1))
                     (* -1 (GREF G2 :E1) (GREF G3 :E2E3) (GREF G1 :E2))
                     (* (GREF G3 :E1E3) (GREF G2 :E3) (GREF G1 :E3))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G3 :E2E3))
                         (* (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 VE3) (G3 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (*
                          (+ (* -1 (GREF G1 :E2) (GREF G2 :E3))
                             (* (GREF G1 :E3) (GREF G2 :E2)))
                          (GREF G3 :E1E2E3))
                         (*
                          (+ (* (GREF G1 :E1) (GREF G2 :E3))
                             (* -1 (GREF G1 :E3) (GREF G2 :E1)))
                          (GREF G3 :E1E2E3))
                         0
                         (*
                          (+ (* -1 (GREF G1 :E1) (GREF G2 :E2))
                             (* (GREF G1 :E2) (GREF G2 :E1)))
                          (GREF G3 :E1E2E3))
                         0 0
                         (*
                          (+ (* (GREF G1 :E1) (GREF G2 :E1))
                             (* (GREF G1 :E2) (GREF G2 :E2))
                             (* (GREF G1 :E3) (GREF G2 :E3)))
                          (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 VE3) (G3 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G3 :E1E2) (GREF G2 :E1) (GREF G1 :E2))
                     (* -1 (GREF G1 :E1) (GREF G3 :E1E3) (GREF G2 :E3))
                     (*
                      (+ (* (GREF G2 :E1) (GREF G3 :E1E3))
                         (* (GREF G3 :S) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                         (* (GREF G3 :S) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E2E3)))
                  (+ (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1))
                     (* -1 (GREF G3 :S) (GREF G2 :E1) (GREF G1 :E2))
                     (* -1 (GREF G1 :E1) (GREF G3 :E2E3) (GREF G2 :E3))
                     (*
                      (+ (* (GREF G2 :E1) (GREF G3 :E2E3))
                         (* (GREF G3 :E1E2) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E1))
                         (* (GREF G3 :E1E2) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G3 :E2E3) (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G3 :E1E3) (GREF G2 :E1) (GREF G1 :E2))
                     (* (GREF G1 :E1) (GREF G3 :E1E2) (GREF G2 :E3))
                     (*
                      (+ (* -1 (GREF G2 :E1) (GREF G3 :E1E2))
                         (* (GREF G3 :E2E3) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                         (* (GREF G3 :E2E3) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G1 :E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :S)))
                  (+ (* (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E1))
                     (* -1 (GREF G3 :E2E3) (GREF G2 :E1) (GREF G1 :E2))
                     (* (GREF G1 :E1) (GREF G3 :S) (GREF G2 :E3))
                     (*
                      (+ (* -1 (GREF G2 :E1) (GREF G3 :S))
                         (* (GREF G3 :E1E3) (GREF G2 :E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G1 :E2) (GREF G2 :E3))
                         (* (GREF G1 :E3) (GREF G2 :E2)))
                      (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 BVE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* (GREF G3 :E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2E3)))
                  (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                         (* -1 (GREF G3 :S) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G3 :E1E2E3) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* (GREF G3 :E1E2E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E3)))
                  (+ (* (GREF G3 :S) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E1) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 BVE3) (G3 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (*
                          (+ (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                             (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                          (GREF G3 :S))
                         (*
                          (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                             (* -1 (GREF G1 :E3) (GREF G2 :E2E3)))
                          (GREF G3 :S))
                         0
                         (*
                          (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                             (* (GREF G1 :E2) (GREF G2 :E2E3)))
                          (GREF G3 :S))
                         0 0
                         (*
                          (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                             (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                             (* (GREF G1 :E3) (GREF G2 :E1E2)))
                          (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 BVE3) (G3 VE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* (GREF G2 :E1E2) (GREF G3 :E2) (GREF G1 :E1))
                     (* -1 (GREF G3 :E1) (GREF G1 :E3) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E1) (GREF G2 :E1E2) (GREF G1 :E2))
                     (* -1 (GREF G1 :E3) (GREF G3 :E2) (GREF G2 :E2E3))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                         (* (GREF G1 :E2) (GREF G2 :E2E3)))
                      (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                    (GREF G1 :E3))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G1 :E1))
                       (* -1 (GREF G3 :E2) (GREF G1 :E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :E3)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E3))
                     (* (GREF G3 :E3) (GREF G1 :E1) (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1)))
                  (+ (* -1 (GREF G3 :E1) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E3) (GREF G2 :E1E3) (GREF G1 :E3))
                     (* -1 (GREF G3 :E3) (GREF G1 :E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 BVE3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E2))
                          (* -1 (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E1E3))
                          (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E3))
                          (* -1 (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1E2))
                          (*
                           (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                              (* (GREF G1 :E2) (GREF G2 :E1E3))
                              (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                           (GREF G3 :E2E3)))
                         (+
                          (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E2))
                          (* -1 (GREF G3 :E2E3) (GREF G1 :E1) (GREF G2 :E1E3))
                          (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3) (GREF G1 :E3))
                          (* -1 (GREF G3 :E1E2) (GREF G1 :E2) (GREF G2 :E1E2))
                          (*
                           (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                              (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                              (* (GREF G1 :E3) (GREF G2 :E1E2)))
                           (GREF G3 :E1E3)))
                         0
                         (+
                          (*
                           (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                              (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                           (GREF G1 :E3))
                          (*
                           (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                              (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                           (GREF G2 :E1E2))
                          (*
                           (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                              (* (GREF G1 :E2) (GREF G2 :E1E3))
                              (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                           (GREF G3 :E1E2)))
                         0 0
                         (+
                          (* -1 (GREF G2 :E1E2) (GREF G3 :E1E3) (GREF G1 :E1))
                          (* -1 (GREF G3 :E2E3) (GREF G1 :E3) (GREF G2 :E1E3))
                          (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2) (GREF G1 :E2))
                          (* (GREF G1 :E3) (GREF G3 :E1E3) (GREF G2 :E2E3))
                          (*
                           (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                              (* (GREF G1 :E2) (GREF G2 :E2E3)))
                           (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 BVE3) (G3 IE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                      (* (GREF G1 :E2) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                      (* (GREF G1 :E2) (GREF G2 :E2E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                      (* (GREF G1 :E3) (GREF G2 :E2E3)))
                   (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 BVE3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E2))
                          (* -1 (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E1E3))
                          (*
                           (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                              (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                           (GREF G1 :E3))
                          (*
                           (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                              (* -1 (GREF G3 :S) (GREF G1 :E2)))
                           (GREF G2 :E1E2))
                          (*
                           (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                              (* (GREF G1 :E2) (GREF G2 :E1E3))
                              (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                           (GREF G3 :E2E3)))
                         (+
                          (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E2))
                          (* -1 (GREF G3 :E2E3) (GREF G1 :E1) (GREF G2 :E1E3))
                          (*
                           (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                              (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                           (GREF G1 :E3))
                          (*
                           (+ (* (GREF G3 :S) (GREF G1 :E1))
                              (* -1 (GREF G3 :E1E2) (GREF G1 :E2)))
                           (GREF G2 :E1E2))
                          (*
                           (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                              (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                              (* (GREF G1 :E3) (GREF G2 :E1E2)))
                           (GREF G3 :E1E3)))
                         0
                         (+ (* (GREF G3 :S) (GREF G2 :E2E3) (GREF G1 :E2))
                            (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :E1E3))
                            (*
                             (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                                (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                             (GREF G1 :E3))
                            (*
                             (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                                (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                             (GREF G2 :E1E2))
                            (*
                             (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                                (* (GREF G1 :E2) (GREF G2 :E1E3))
                                (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                             (GREF G3 :E1E2)))
                         0 0
                         (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E2))
                            (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1E3))
                            (*
                             (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                                (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                             (GREF G1 :E3))
                            (*
                             (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                                (* -1 (GREF G3 :E2E3) (GREF G1 :E2)))
                             (GREF G2 :E1E2))
                            (*
                             (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                                (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                                (* (GREF G1 :E3) (GREF G2 :E1E2)))
                             (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 IE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E3) (GREF G3 :E1E2))
                       (* (GREF G1 :E2) (GREF G3 :E1E3)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :E3) (GREF G3 :E2))
                       (* -1 (GREF G1 :E2) (GREF G3 :E3)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E3) (GREF G3 :E1))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E2E3)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :E3) (GREF G3 :S))
                       (* (GREF G1 :E2) (GREF G3 :E2E3)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E3) (GREF G3 :E1E2E3))
                       (* (GREF G1 :E2) (GREF G3 :E1)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G1 :E3) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G3 :S)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E3) (GREF G3 :E1E3))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E2)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* (GREF G1 :E3) (GREF G3 :E3))
                       (* (GREF G1 :E2) (GREF G3 :E2)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 IE3) (G3 SE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :E3) (GREF G2 :E1E2E3) (GREF G3 :S))
                         (* (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :S))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 IE3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* (GREF G1 :E3) (GREF G3 :E2) (GREF G2 :E1E2E3))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3)
                               (GREF G3 :E3)))
                         (+
                          (* -1 (GREF G1 :E3) (GREF G3 :E1) (GREF G2 :E1E2E3))
                          (* (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E3)))
                         0
                         (+ (* (GREF G1 :E2) (GREF G3 :E1) (GREF G2 :E1E2E3))
                            (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3)
                               (GREF G3 :E2)))
                         0 0
                         (+
                          (*
                           (+ (* (GREF G1 :E3) (GREF G3 :E3))
                              (* (GREF G1 :E2) (GREF G3 :E2)))
                           (GREF G2 :E1E2E3))
                          (* (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 IE3) (G3 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E3) (GREF G3 :E1E2))
                       (* (GREF G1 :E2) (GREF G3 :E1E3)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E2E3)))
                  (+ (* (GREF G1 :E2) (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                     (* (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G1 :E3) (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3) (GREF G3 :E1E2)))
                  (+ (* (GREF G1 :E3) (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                     (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 IE3) (G3 IE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E3) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 IE3) (G3 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E3) (GREF G3 :E1E2))
                       (* (GREF G1 :E2) (GREF G3 :E1E3)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :E3) (GREF G3 :S))
                       (* (GREF G1 :E2) (GREF G3 :E2E3)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E3) (GREF G3 :E1E3))
                       (* -1 (GREF G1 :E2) (GREF G3 :E1E2)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* (GREF G1 :E3) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G3 :S)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1) (GREF G2 :E1E2E3) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 RE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :E1) (GREF G2 :S) (GREF G1 :E1))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G2 :S))
                         (* (GREF G3 :E3) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (* (GREF G3 :E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G2 :S) (GREF G3 :E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2E3)))
                  (+ (* (GREF G3 :S) (GREF G2 :S) (GREF G1 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G2 :S) (GREF G3 :E1E3))
                         (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                         (* -1 (GREF G3 :S) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2E3)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :S) (GREF G1 :E1))
                     (*
                      (+ (* (GREF G3 :S) (GREF G2 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G2 :S) (GREF G3 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G3 :E2) (GREF G2 :S) (GREF G1 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G2 :S))
                         (* (GREF G3 :E1E2E3) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (* (GREF G3 :E1E2E3) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G2 :S) (GREF G3 :E1E2E3))
                         (* (GREF G3 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E3)))
                  (+ (* (GREF G3 :E1E3) (GREF G2 :S) (GREF G1 :E1))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G2 :S))
                         (* (GREF G3 :S) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G2 :S) (GREF G3 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E3) (GREF G2 :S) (GREF G1 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :S))
                         (* -1 (GREF G3 :E1) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (* -1 (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G2 :S) (GREF G3 :E1))
                         (* (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :E1E2E3) (GREF G2 :S) (GREF G1 :E1))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G2 :S))
                         (* -1 (GREF G3 :E2) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (* -1 (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G2 :S) (GREF G3 :E2))
                         (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1)))
                  (+ (* (GREF G3 :E2E3) (GREF G2 :S) (GREF G1 :E1))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :S))
                         (* (GREF G3 :E1E2) (GREF G2 :E2E3)))
                      (GREF G1 :E2))
                     (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G2 :S) (GREF G3 :E1E2))
                         (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 RE3) (G3 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (*
                          (+ (* (GREF G1 :E1) (GREF G2 :S))
                             (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                             (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                          (GREF G3 :S))
                         (*
                          (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                             (* (GREF G1 :E2) (GREF G2 :S))
                             (* -1 (GREF G1 :E3) (GREF G2 :E2E3)))
                          (GREF G3 :S))
                         0
                         (*
                          (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                             (* (GREF G1 :E2) (GREF G2 :E2E3))
                             (* (GREF G1 :E3) (GREF G2 :S)))
                          (GREF G3 :S))
                         0 0
                         (*
                          (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                             (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                             (* (GREF G1 :E3) (GREF G2 :E1E2)))
                          (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 RE3) (G3 VE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* (GREF G2 :E1E2) (GREF G3 :E2) (GREF G1 :E1))
                     (* -1 (GREF G3 :E1) (GREF G2 :E1E2) (GREF G1 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E2E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G1 :E1))
                         (* (GREF G3 :E2) (GREF G1 :E2)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                         (* (GREF G1 :E2) (GREF G2 :E2E3))
                         (* (GREF G1 :E3) (GREF G2 :S)))
                      (GREF G3 :E3)))
                  (+ (* (GREF G3 :E2) (GREF G2 :S) (GREF G1 :E1))
                     (* -1 (GREF G2 :S) (GREF G3 :E1) (GREF G1 :E2))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G1 :E1))
                         (* -1 (GREF G3 :E2) (GREF G1 :E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G3 :E3) (GREF G2 :S))
                       (* -1 (GREF G3 :E2) (GREF G2 :E2E3)))
                    (GREF G1 :E2))
                   (* -1 (GREF G3 :E2) (GREF G1 :E1) (GREF G2 :E1E3))
                   (*
                    (+ (* -1 (GREF G2 :S) (GREF G3 :E2))
                       (* -1 (GREF G3 :E3) (GREF G2 :E2E3)))
                    (GREF G1 :E3))
                   (* (GREF G3 :E3) (GREF G1 :E1) (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E3) (GREF G2 :E1E2)))
                    (GREF G3 :E1)))
                  (+ (* (GREF G3 :E3) (GREF G2 :S) (GREF G1 :E1))
                     (* -1 (GREF G3 :E1) (GREF G2 :E2E3) (GREF G1 :E2))
                     (* -1 (GREF G3 :E1) (GREF G1 :E1) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G2 :S) (GREF G3 :E1))
                         (* -1 (GREF G3 :E3) (GREF G2 :E1E3)))
                      (GREF G1 :E3))
                     (* -1 (GREF G3 :E3) (GREF G1 :E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                         (* (GREF G1 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 RE3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (*
                           (+ (* -1 (GREF G3 :E1E2) (GREF G2 :S))
                              (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3)))
                           (GREF G1 :E2))
                          (* -1 (GREF G3 :E1E3) (GREF G1 :E1) (GREF G2 :E1E3))
                          (*
                           (+ (* -1 (GREF G2 :S) (GREF G3 :E1E3))
                              (* (GREF G3 :E1E2) (GREF G2 :E2E3)))
                           (GREF G1 :E3))
                          (* -1 (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1E2))
                          (*
                           (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                              (* (GREF G1 :E2) (GREF G2 :E1E3))
                              (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                           (GREF G3 :E2E3)))
                         (+ (* (GREF G3 :E1E2) (GREF G2 :S) (GREF G1 :E1))
                            (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3)
                               (GREF G1 :E2))
                            (* -1 (GREF G3 :E2E3) (GREF G1 :E1)
                               (GREF G2 :E1E3))
                            (*
                             (+ (* -1 (GREF G2 :S) (GREF G3 :E2E3))
                                (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                             (GREF G1 :E3))
                            (* -1 (GREF G3 :E1E2) (GREF G1 :E2)
                               (GREF G2 :E1E2))
                            (*
                             (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                                (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                                (* (GREF G1 :E3) (GREF G2 :E1E2)))
                             (GREF G3 :E1E3)))
                         0
                         (+ (* (GREF G3 :E1E3) (GREF G2 :S) (GREF G1 :E1))
                            (* (GREF G2 :S) (GREF G3 :E2E3) (GREF G1 :E2))
                            (*
                             (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                                (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                             (GREF G1 :E3))
                            (*
                             (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                                (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                             (GREF G2 :E1E2))
                            (*
                             (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                                (* (GREF G1 :E2) (GREF G2 :E1E3))
                                (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                             (GREF G3 :E1E2)))
                         0 0
                         (+
                          (* -1 (GREF G2 :E1E2) (GREF G3 :E1E3) (GREF G1 :E1))
                          (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2) (GREF G1 :E2))
                          (*
                           (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3))
                              (* (GREF G3 :E1E3) (GREF G2 :E2E3)))
                           (GREF G1 :E3))
                          (*
                           (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                              (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                           (GREF G2 :S))
                          (*
                           (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                              (* (GREF G1 :E2) (GREF G2 :E2E3))
                              (* (GREF G1 :E3) (GREF G2 :S)))
                           (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 RE3) (G3 IE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                      (* (GREF G1 :E2) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                      (* (GREF G1 :E2) (GREF G2 :E2E3))
                      (* (GREF G1 :E3) (GREF G2 :S)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :E1) (GREF G2 :S))
                      (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :E1) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E2) (GREF G2 :S))
                      (* (GREF G1 :E3) (GREF G2 :E2E3)))
                   (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 VE3) (G2 RE3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* (GREF G3 :S) (GREF G2 :S) (GREF G1 :E1))
                            (*
                             (+ (* -1 (GREF G3 :E1E2) (GREF G2 :S))
                                (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3)))
                             (GREF G1 :E2))
                            (* -1 (GREF G3 :E1E3) (GREF G1 :E1)
                               (GREF G2 :E1E3))
                            (*
                             (+ (* -1 (GREF G2 :S) (GREF G3 :E1E3))
                                (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                                (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                             (GREF G1 :E3))
                            (*
                             (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1))
                                (* -1 (GREF G3 :S) (GREF G1 :E2)))
                             (GREF G2 :E1E2))
                            (*
                             (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                                (* (GREF G1 :E2) (GREF G2 :E1E3))
                                (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                             (GREF G3 :E2E3)))
                         (+ (* (GREF G3 :E1E2) (GREF G2 :S) (GREF G1 :E1))
                            (*
                             (+ (* (GREF G3 :S) (GREF G2 :S))
                                (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3)))
                             (GREF G1 :E2))
                            (* -1 (GREF G3 :E2E3) (GREF G1 :E1)
                               (GREF G2 :E1E3))
                            (*
                             (+ (* -1 (GREF G2 :S) (GREF G3 :E2E3))
                                (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                                (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                             (GREF G1 :E3))
                            (*
                             (+ (* (GREF G3 :S) (GREF G1 :E1))
                                (* -1 (GREF G3 :E1E2) (GREF G1 :E2)))
                             (GREF G2 :E1E2))
                            (*
                             (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                                (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                                (* (GREF G1 :E3) (GREF G2 :E1E2)))
                             (GREF G3 :E1E3)))
                         0
                         (+ (* (GREF G3 :E1E3) (GREF G2 :S) (GREF G1 :E1))
                            (*
                             (+ (* (GREF G3 :E2E3) (GREF G2 :S))
                                (* (GREF G3 :S) (GREF G2 :E2E3)))
                             (GREF G1 :E2))
                            (* (GREF G3 :S) (GREF G1 :E1) (GREF G2 :E1E3))
                            (*
                             (+ (* (GREF G2 :S) (GREF G3 :S))
                                (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                                (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                             (GREF G1 :E3))
                            (*
                             (+ (* (GREF G3 :E2E3) (GREF G1 :E1))
                                (* -1 (GREF G3 :E1E3) (GREF G1 :E2)))
                             (GREF G2 :E1E2))
                            (*
                             (+ (* -1 (GREF G1 :E1) (GREF G2 :E2E3))
                                (* (GREF G1 :E2) (GREF G2 :E1E3))
                                (* -1 (GREF G1 :E3) (GREF G2 :E1E2)))
                             (GREF G3 :E1E2)))
                         0 0
                         (+ (* (GREF G3 :E2E3) (GREF G2 :S) (GREF G1 :E1))
                            (*
                             (+ (* -1 (GREF G3 :E1E3) (GREF G2 :S))
                                (* (GREF G3 :E1E2) (GREF G2 :E2E3)))
                             (GREF G1 :E2))
                            (* (GREF G3 :E1E2) (GREF G1 :E1) (GREF G2 :E1E3))
                            (*
                             (+ (* (GREF G2 :S) (GREF G3 :E1E2))
                                (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                                (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                             (GREF G1 :E3))
                            (*
                             (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1))
                                (* -1 (GREF G3 :E2E3) (GREF G1 :E2)))
                             (GREF G2 :E1E2))
                            (*
                             (+ (* (GREF G1 :E1) (GREF G2 :E2E3))
                                (* -1 (GREF G1 :E2) (GREF G2 :E1E3))
                                (* (GREF G1 :E3) (GREF G2 :E1E2)))
                             (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 E3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E3))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E1E3))
                       (* -1 (GREF G3 :S) (GREF G2 :E1E2))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :S))
                       (* (GREF G2 :E1E3) (GREF G3 :E2E3)))
                    (GREF G1 :E1E2))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :S) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :S))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E2E3))
                       (* (GREF G3 :E1) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (* (GREF G3 :E1) (GREF G1 :E1E2) (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E1E2))
                       (* -1 (GREF G2 :S) (GREF G3 :E2E3))
                       (* (GREF G3 :E2) (GREF G2 :E3))
                       (* -1 (GREF G3 :E3) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E3) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                       (* (GREF G1 :E1E3) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1E2E3) (GREF G3 :E1E3))
                       (* (GREF G2 :E2E3) (GREF G3 :E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E2))
                       (* (GREF G3 :E2) (GREF G2 :S))
                       (* (GREF G2 :E1E3) (GREF G3 :E1E2E3)))
                    (GREF G1 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                       (* (GREF G3 :E3) (GREF G2 :S))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2E3))
                       (* (GREF G3 :S) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (* (GREF G3 :S) (GREF G1 :E1E2) (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E2E3))
                       (* (GREF G3 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E3) (GREF G2 :E1E2))
                       (* -1 (GREF G2 :S) (GREF G3 :E1E2E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                       (* (GREF G3 :E1E3) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                       (* (GREF G1 :E1E3) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1E2E3) (GREF G3 :E2E3))
                       (* (GREF G2 :E2E3) (GREF G3 :E1E2E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E1E2))
                       (* -1 (GREF G3 :E1) (GREF G2 :S))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E3)))
                    (GREF G1 :E1E2))
                   (*
                    (+ (* (GREF G3 :S) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E1E3))
                       (* (GREF G3 :E1E2E3) (GREF G2 :S))
                       (* (GREF G2 :E1E2) (GREF G3 :E3))
                       (* (GREF G3 :E1E2) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (* (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2))
                       (* (GREF G2 :S) (GREF G3 :E3))
                       (* (GREF G3 :S) (GREF G2 :E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* -1 (GREF G3 :S) (GREF G1 :E1E2))
                       (* (GREF G3 :E2E3) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                       (* (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2))
                       (* (GREF G3 :S) (GREF G2 :S))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3)))
                    (GREF G1 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :S))
                       (* (GREF G2 :E1E2) (GREF G3 :E1E3))
                       (* (GREF G3 :E2) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (* (GREF G3 :E2) (GREF G1 :E1E2) (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                       (* (GREF G3 :S) (GREF G2 :E1E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E2))
                       (* (GREF G2 :S) (GREF G3 :E1E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                       (* (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :S))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E1))
                       (* -1 (GREF G3 :E3) (GREF G2 :E1E2))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :S))
                       (* (GREF G2 :E1E3) (GREF G3 :E2)))
                    (GREF G1 :E1E2))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :S))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E2))
                       (* (GREF G3 :E1E3) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (* (GREF G3 :E1E3) (GREF G1 :E1E2) (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3))
                       (* (GREF G3 :E1) (GREF G2 :E1E2))
                       (* -1 (GREF G2 :S) (GREF G3 :E2))
                       (* (GREF G3 :E2E3) (GREF G2 :E3))
                       (* -1 (GREF G3 :S) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :S) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                       (* (GREF G1 :E1E3) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1E2E3) (GREF G3 :E1))
                       (* (GREF G2 :E2E3) (GREF G3 :S))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2))
                       (* (GREF G3 :E2E3) (GREF G2 :S))
                       (* (GREF G2 :E1E3) (GREF G3 :E1E2)))
                    (GREF G1 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                       (* (GREF G3 :S) (GREF G2 :S))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2))
                       (* (GREF G3 :E3) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (* (GREF G3 :E3) (GREF G1 :E1E2) (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E3) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :S) (GREF G2 :E1E2))
                       (* -1 (GREF G2 :S) (GREF G3 :E1E2))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E3))
                       (* (GREF G3 :E1) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E1E2E3) (GREF G1 :E1E2))
                       (* (GREF G3 :E1) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                       (* (GREF G1 :E1E3) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1E2E3) (GREF G3 :E2))
                       (* (GREF G2 :E2E3) (GREF G3 :E1E2))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :S))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :S)))
                    (GREF G1 :E1E2))
                   (*
                    (+ (* (GREF G3 :E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3))
                       (* (GREF G3 :E1E2) (GREF G2 :S))
                       (* (GREF G2 :E1E2) (GREF G3 :S))
                       (* (GREF G3 :E1E2E3) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (* (GREF G3 :E1E2E3) (GREF G1 :E1E2) (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2))
                       (* (GREF G2 :S) (GREF G3 :S))
                       (* (GREF G3 :E3) (GREF G2 :E3))
                       (* (GREF G3 :E2) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* -1 (GREF G3 :E3) (GREF G1 :E1E2))
                       (* (GREF G3 :E2) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                       (* (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E1E2))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E2))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2))
                       (* (GREF G3 :E3) (GREF G2 :S))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1)))
                    (GREF G1 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :S))
                       (* (GREF G2 :E1E2) (GREF G3 :E1))
                       (* (GREF G3 :E2E3) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (* (GREF G3 :E2E3) (GREF G1 :E1E2) (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                       (* (GREF G3 :E3) (GREF G2 :E1E3))
                       (* (GREF G3 :E2) (GREF G2 :E1E2))
                       (* (GREF G2 :S) (GREF G3 :E1))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E1E3) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                       (* (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 E3) (G3 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1E2) (GREF G2 :E2))
                      (* (GREF G1 :E1E3) (GREF G2 :E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                      (* (GREF G1 :E1E3) (GREF G2 :E1E2E3))
                      (* (GREF G1 :E2E3) (GREF G2 :E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1E2) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                      (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                      (* (GREF G1 :E1E3) (GREF G2 :S))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                      (* (GREF G1 :E2E3) (GREF G2 :S)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                      (* (GREF G1 :E2E3) (GREF G2 :E1)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 E3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G3 :E1) (GREF G2 :E3))
                       (* (GREF G3 :E2) (GREF G2 :E1E2E3)))
                    (GREF G1 :E1E3))
                   (* -1 (GREF G3 :E2) (GREF G1 :E1E2) (GREF G2 :E1))
                   (*
                    (+ (* (GREF G2 :E3) (GREF G3 :E2))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E2E3)))
                    (GREF G1 :E2E3))
                   (* (GREF G3 :E1) (GREF G1 :E1E2) (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                    (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E2E3)))
                    (GREF G1 :E1E3))
                   (* (GREF G3 :E2) (GREF G1 :E1E2) (GREF G2 :S))
                   (*
                    (+ (* (GREF G2 :E1E3) (GREF G3 :E2))
                       (* -1 (GREF G3 :E1) (GREF G2 :E2E3)))
                    (GREF G1 :E2E3))
                   (* -1 (GREF G3 :E1) (GREF G1 :E1E2) (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                       (* (GREF G1 :E1E3) (GREF G2 :S))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                    (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E2E3) (GREF G3 :E1))
                       (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                    (GREF G1 :E1E3))
                   (* -1 (GREF G3 :E2) (GREF G1 :E1E2) (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E3)))
                    (GREF G1 :E2E3))
                   (* -1 (GREF G3 :E1) (GREF G1 :E1E2) (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                       (* (GREF G1 :E2E3) (GREF G2 :S)))
                    (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E1))
                       (* (GREF G3 :E2) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (* (GREF G3 :E2) (GREF G1 :E1E2) (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E3)))
                    (GREF G1 :E2E3))
                   (* (GREF G3 :E1) (GREF G1 :E1E2) (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                       (* (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E3)))
                  (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E3) (GREF G2 :E1E3) (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E1) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (* -1 (GREF G3 :E1) (GREF G1 :E1E3) (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G2 :E1E2E3) (GREF G3 :E1) (GREF G1 :E1E2))
                     (* (GREF G3 :E3) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E3) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (* (GREF G3 :E1) (GREF G1 :E1E3) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G2 :E1E2E3) (GREF G3 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E3) (GREF G2 :E1E2E3) (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G2 :E3))
                         (* (GREF G3 :E2) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E2) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1)))
                  (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E2) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E2) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 E3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E3) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E2E3)))
                  (+ (* (GREF G2 :E1E2E3) (GREF G3 :E1E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3) (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2E3)))
                  (+ (* (GREF G2 :E1E2E3) (GREF G3 :E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (* (GREF G3 :E2E3) (GREF G1 :E1E3) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3) (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1E2E3) (GREF G3 :E2E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (* (GREF G3 :E1E3) (GREF G1 :E1E2) (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E3)))
                    (GREF G1 :E2E3))
                   (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2) (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                       (* (GREF G1 :E1E3) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                    (GREF G1 :E1E3))
                   (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E3)))
                    (GREF G1 :E2E3))
                   (* (GREF G3 :E2E3) (GREF G1 :E1E2) (GREF G2 :S))
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E2E3)))
                    (GREF G1 :E1E3))
                   (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2) (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3)))
                    (GREF G1 :E2E3))
                   (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                       (* (GREF G1 :E1E3) (GREF G2 :S))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G2 :E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3)))
                    (GREF G1 :E1E3))
                   (* (GREF G3 :E1E3) (GREF G1 :E1E2) (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G2 :E3) (GREF G3 :E1E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2E3)))
                    (GREF G1 :E2E3))
                   (* (GREF G3 :E2E3) (GREF G1 :E1E2) (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                    (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 E3) (G3 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                      (* (GREF G1 :E1E3) (GREF G2 :E2))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                      (* (GREF G1 :E1E3) (GREF G2 :S))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :E1E2) (GREF G2 :S))
                      (* (GREF G1 :E1E3) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :E1E2) (GREF G2 :E1))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :E1E2) (GREF G2 :E2))
                      (* (GREF G1 :E1E3) (GREF G2 :E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                   (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 E3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E3) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (* -1 (GREF G3 :S) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E2E3)))
                  (+ (* (GREF G2 :E1E2E3) (GREF G3 :E1E3) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* (GREF G3 :S) (GREF G2 :E3)))
                      (GREF G1 :E1E3))
                     (* (GREF G3 :S) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2E3)))
                  (+ (* (GREF G2 :E1E2E3) (GREF G3 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :S) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E2) (GREF G2 :E3)))
                      (GREF G1 :E1E3))
                     (* (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* (GREF G3 :S) (GREF G2 :E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G1 :E1E2))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :S) (GREF G2 :E1E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :S) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E3)))
                      (GREF G1 :E1E3))
                     (* (GREF G3 :E1E3) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G2 :E2E3) (GREF G3 :S) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1E2))
                         (* (GREF G3 :S) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G2 :E2E3) (GREF G3 :E1E2) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :S)))
                  (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E1E2) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E3)))
                      (GREF G1 :E1E3))
                     (* (GREF G3 :E2E3) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 SE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G3 :E2))
                       (* (GREF G1 :E1E3) (GREF G3 :E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1))
                       (* (GREF G1 :E1E3) (GREF G3 :E1E2E3)))
                    (GREF G2 :S))
                   (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G3 :S))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E2E3)))
                    (GREF G2 :S))
                   (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G3 :E2E3))
                       (* (GREF G1 :E1E3) (GREF G3 :S)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1E3))
                       (* (GREF G1 :E1E3) (GREF G3 :E1E2)))
                    (GREF G2 :S))
                   (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G3 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E2)))
                    (GREF G2 :S))
                   (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 SE3) (G3 SE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E1E3) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 SE3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* (GREF G1 :E1E2) (GREF G3 :E2) (GREF G2 :S))
                            (* (GREF G1 :E1E3) (GREF G2 :S) (GREF G3 :E3)))
                         (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1) (GREF G2 :S))
                            (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E3)))
                         0
                         (+ (* -1 (GREF G1 :E1E3) (GREF G3 :E1) (GREF G2 :S))
                            (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E2)))
                         0 0
                         (+
                          (*
                           (+ (* (GREF G1 :E1E2) (GREF G3 :E3))
                              (* -1 (GREF G1 :E1E3) (GREF G3 :E2)))
                           (GREF G2 :S))
                          (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 SE3) (G3 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G1 :E1E3) (GREF G3 :E2E3) (GREF G2 :S))
                     (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1E3) (GREF G2 :S))
                     (* (GREF G1 :E1E3) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+ (* (GREF G1 :E1E2) (GREF G3 :E2E3) (GREF G2 :S))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 SE3) (G3 IE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E2E3))
                         (* (GREF G1 :E1E3) (GREF G2 :S) (GREF G3 :E1E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :S)
                            (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 SE3) (G3 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G3 :S))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E2E3)))
                    (GREF G2 :S))
                   (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1E3))
                       (* (GREF G1 :E1E3) (GREF G3 :E1E2)))
                    (GREF G2 :S))
                   (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G3 :E2E3))
                       (* (GREF G1 :E1E3) (GREF G3 :S)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 VE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :E1) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E1) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G2 :E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E2E3)))
                  (+ (* (GREF G3 :S) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :S) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2E3)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :S) (GREF G2 :E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G1 :E1E2))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G3 :E2) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E2) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G2 :E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E3)))
                  (+ (* (GREF G3 :E1E3) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E1E3) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E3) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E3) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :E3))
                         (* (GREF G3 :E1) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E1) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :E1E2E3) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E1E2E3) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G2 :E3))
                         (* (GREF G3 :E2) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E2) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1)))
                  (+ (* (GREF G3 :E2E3) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E2E3) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 VE3) (G3 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (*
                          (+ (* (GREF G1 :E1E2) (GREF G2 :E2))
                             (* (GREF G1 :E1E3) (GREF G2 :E3)))
                          (GREF G3 :S))
                         (*
                          (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                             (* (GREF G1 :E2E3) (GREF G2 :E3)))
                          (GREF G3 :S))
                         0
                         (*
                          (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                             (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                          (GREF G3 :S))
                         0 0
                         (*
                          (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                             (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                             (* (GREF G1 :E2E3) (GREF G2 :E1)))
                          (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 VE3) (G3 VE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :E1) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* -1 (GREF G1 :E1E2) (GREF G3 :E2) (GREF G2 :E1))
                     (* (GREF G2 :E3) (GREF G3 :E2) (GREF G1 :E2E3))
                     (* (GREF G3 :E1) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                      (GREF G3 :E3)))
                  (+ (* (GREF G3 :E2) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E2) (GREF G1 :E1E2) (GREF G2 :E2))
                     (* -1 (GREF G3 :E1) (GREF G2 :E3) (GREF G1 :E2E3))
                     (* (GREF G3 :E1) (GREF G1 :E1E2) (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G3 :E3) (GREF G2 :E3))
                       (* (GREF G3 :E2) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* -1 (GREF G3 :E3) (GREF G1 :E1E2))
                       (* (GREF G3 :E2) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                       (* (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E1)))
                  (+ (* (GREF G3 :E3) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E3) (GREF G1 :E1E2) (GREF G2 :E2))
                     (* (GREF G3 :E1) (GREF G2 :E2) (GREF G1 :E2E3))
                     (* (GREF G3 :E1) (GREF G1 :E1E3) (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 VE3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (*
                           (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                              (* (GREF G3 :E1E3) (GREF G2 :E2)))
                           (GREF G1 :E2E3))
                          (*
                           (+ (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                              (* (GREF G3 :E1E3) (GREF G1 :E1E3)))
                           (GREF G2 :E1))
                          (*
                           (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                              (* (GREF G1 :E1E3) (GREF G2 :E2))
                              (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                           (GREF G3 :E2E3)))
                         (+ (* (GREF G3 :E1E2) (GREF G2 :E3) (GREF G1 :E1E3))
                            (* (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E2))
                            (* (GREF G3 :E2E3) (GREF G2 :E2) (GREF G1 :E2E3))
                            (* (GREF G3 :E2E3) (GREF G1 :E1E3) (GREF G2 :E1))
                            (*
                             (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                                (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                                (* (GREF G1 :E2E3) (GREF G2 :E1)))
                             (GREF G3 :E1E3)))
                         0
                         (+ (* (GREF G3 :E1E3) (GREF G2 :E3) (GREF G1 :E1E3))
                            (* (GREF G3 :E1E3) (GREF G1 :E1E2) (GREF G2 :E2))
                            (* (GREF G3 :E2E3) (GREF G2 :E3) (GREF G1 :E2E3))
                            (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)
                               (GREF G2 :E1))
                            (*
                             (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                                (* (GREF G1 :E1E3) (GREF G2 :E2))
                                (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                             (GREF G3 :E1E2)))
                         0 0
                         (+ (* (GREF G3 :E2E3) (GREF G2 :E3) (GREF G1 :E1E3))
                            (* (GREF G1 :E1E2) (GREF G3 :E1E3) (GREF G2 :E1))
                            (* -1 (GREF G2 :E3) (GREF G3 :E1E3)
                               (GREF G1 :E2E3))
                            (* (GREF G3 :E2E3) (GREF G1 :E1E2) (GREF G2 :E2))
                            (*
                             (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                                (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                             (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 VE3) (G3 IE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                      (* (GREF G1 :E1E3) (GREF G2 :E2))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :E1E2) (GREF G2 :E2))
                      (* (GREF G1 :E1E3) (GREF G2 :E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :E1E2) (GREF G2 :E1))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E3)))
                   (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 VE3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* (GREF G3 :S) (GREF G2 :E3) (GREF G1 :E1E3))
                            (* (GREF G3 :S) (GREF G1 :E1E2) (GREF G2 :E2))
                            (*
                             (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                                (* (GREF G3 :E1E3) (GREF G2 :E2)))
                             (GREF G1 :E2E3))
                            (*
                             (+ (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                                (* (GREF G3 :E1E3) (GREF G1 :E1E3)))
                             (GREF G2 :E1))
                            (*
                             (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                                (* (GREF G1 :E1E3) (GREF G2 :E2))
                                (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                             (GREF G3 :E2E3)))
                         (+ (* (GREF G3 :E1E2) (GREF G2 :E3) (GREF G1 :E1E3))
                            (* (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E2))
                            (*
                             (+ (* (GREF G3 :S) (GREF G2 :E3))
                                (* (GREF G3 :E2E3) (GREF G2 :E2)))
                             (GREF G1 :E2E3))
                            (*
                             (+ (* -1 (GREF G3 :S) (GREF G1 :E1E2))
                                (* (GREF G3 :E2E3) (GREF G1 :E1E3)))
                             (GREF G2 :E1))
                            (*
                             (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                                (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                                (* (GREF G1 :E2E3) (GREF G2 :E1)))
                             (GREF G3 :E1E3)))
                         0
                         (+ (* (GREF G3 :E1E3) (GREF G2 :E3) (GREF G1 :E1E3))
                            (* (GREF G3 :E1E3) (GREF G1 :E1E2) (GREF G2 :E2))
                            (*
                             (+ (* (GREF G3 :E2E3) (GREF G2 :E3))
                                (* -1 (GREF G3 :S) (GREF G2 :E2)))
                             (GREF G1 :E2E3))
                            (*
                             (+ (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2))
                                (* -1 (GREF G3 :S) (GREF G1 :E1E3)))
                             (GREF G2 :E1))
                            (*
                             (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                                (* (GREF G1 :E1E3) (GREF G2 :E2))
                                (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                             (GREF G3 :E1E2)))
                         0 0
                         (+ (* (GREF G3 :E2E3) (GREF G2 :E3) (GREF G1 :E1E3))
                            (* (GREF G3 :E2E3) (GREF G1 :E1E2) (GREF G2 :E2))
                            (*
                             (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                                (* -1 (GREF G3 :E1E2) (GREF G2 :E2)))
                             (GREF G1 :E2E3))
                            (*
                             (+ (* (GREF G3 :E1E3) (GREF G1 :E1E2))
                                (* -1 (GREF G3 :E1E2) (GREF G1 :E1E3)))
                             (GREF G2 :E1))
                            (*
                             (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                                (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                                (* (GREF G1 :E2E3) (GREF G2 :E1)))
                             (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 BVE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3) (GREF G1 :E2E3))
                     (* -1 (GREF G2 :E2E3) (GREF G3 :E1E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E1E3))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E1) (GREF G2 :E2E3) (GREF G1 :E2E3))
                     (* (GREF G2 :E2E3) (GREF G3 :E3) (GREF G1 :E1E2))
                     (* (GREF G3 :E2) (GREF G1 :E2E3) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E3))
                         (* -1 (GREF G3 :E1) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2E3)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3) (GREF G1 :E2E3))
                     (* (GREF G2 :E2E3) (GREF G3 :E1E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1) (GREF G1 :E2E3) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2E3))
                         (* -1 (GREF G3 :E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E3)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E2E3))
                     (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :E2E3) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E2E3))
                     (* -1 (GREF G2 :E2E3) (GREF G3 :E1) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E2E3) (GREF G1 :E2E3) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E1))
                         (* -1 (GREF G3 :E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E2E3))
                     (* (GREF G2 :E2E3) (GREF G3 :S) (GREF G1 :E1E2))
                     (* (GREF G3 :E2E3) (GREF G1 :E2E3) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G1 :E2E3) (GREF G3 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E2E3))
                     (* (GREF G2 :E2E3) (GREF G3 :E1E2) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :E2E3) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :S)))
                  (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :E2E3) (GREF G1 :E2E3))
                     (* -1 (GREF G2 :E2E3) (GREF G3 :E2) (GREF G1 :E1E2))
                     (* (GREF G3 :E3) (GREF G1 :E2E3) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E2))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 BVE3) (G3 SE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                      (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 BVE3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (* -1 (GREF G3 :E1) (GREF G1 :E1E3) (GREF G2 :E1E3))
                          (* -1 (GREF G1 :E1E3) (GREF G3 :E2) (GREF G2 :E2E3))
                          (*
                           (+ (* (GREF G2 :E1E3) (GREF G3 :E2))
                              (* -1 (GREF G3 :E1) (GREF G2 :E2E3)))
                           (GREF G1 :E2E3))
                          (* -1 (GREF G3 :E1) (GREF G1 :E1E2) (GREF G2 :E1E2))
                          (*
                           (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                              (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                           (GREF G3 :E3)))
                         (+
                          (* -1 (GREF G3 :E2) (GREF G2 :E2E3) (GREF G1 :E2E3))
                          (* -1 (GREF G1 :E2E3) (GREF G3 :E1) (GREF G2 :E1E3))
                          (*
                           (+ (* (GREF G2 :E2E3) (GREF G3 :E1))
                              (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                           (GREF G1 :E1E3))
                          (* -1 (GREF G3 :E2) (GREF G1 :E1E2) (GREF G2 :E1E2))
                          (*
                           (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                              (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                           (GREF G3 :E3)))
                         0
                         (+
                          (* -1 (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E2E3))
                          (* -1 (GREF G2 :E2E3) (GREF G3 :E1) (GREF G1 :E1E2))
                          (* -1 (GREF G3 :E3) (GREF G2 :E1E3) (GREF G1 :E1E3))
                          (*
                           (+ (* (GREF G1 :E2E3) (GREF G3 :E1))
                              (* -1 (GREF G3 :E3) (GREF G1 :E1E2)))
                           (GREF G2 :E1E2))
                          (*
                           (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                              (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                           (GREF G3 :E2)))
                         0 0
                         (+
                          (* -1 (GREF G2 :E2E3) (GREF G3 :E2) (GREF G1 :E1E2))
                          (* (GREF G3 :E3) (GREF G1 :E2E3) (GREF G2 :E1E3))
                          (* -1 (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E1E3))
                          (* (GREF G1 :E2E3) (GREF G3 :E2) (GREF G2 :E1E2))
                          (*
                           (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                              (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                           (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 BVE3) (G3 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3) (GREF G2 :E1E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E1E3))
                     (* (GREF G1 :E2E3) (GREF G3 :E1E3) (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E2E3))
                     (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3) (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E3) (GREF G3 :E1E3) (GREF G2 :E2E3))
                     (*
                      (+ (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3)))
                      (GREF G1 :E2E3))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E2E3))
                     (* (GREF G1 :E2E3) (GREF G3 :E2E3) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 BVE3) (G3 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (*
                          (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                             (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                          (GREF G3 :E1E2E3))
                         (*
                          (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                             (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                          (GREF G3 :E1E2E3))
                         0
                         (*
                          (+ (* (GREF G1 :E1E3) (GREF G2 :E2E3))
                             (* -1 (GREF G1 :E2E3) (GREF G2 :E1E3)))
                          (GREF G3 :E1E2E3))
                         0 0
                         (*
                          (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                             (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                             (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                          (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 BVE3) (G3 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3) (GREF G1 :E2E3))
                     (* -1 (GREF G2 :E2E3) (GREF G3 :E1E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E1E3))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E2E3))
                     (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :E2E3) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E2E3))
                     (* (GREF G2 :E2E3) (GREF G3 :E1E2) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :E2E3) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :S)))
                  (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E2E3))
                     (* (GREF G2 :E2E3) (GREF G3 :S) (GREF G1 :E1E2))
                     (* (GREF G3 :E2E3) (GREF G1 :E2E3) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G1 :E2E3) (GREF G3 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 IE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1))
                       (* (GREF G1 :E1E3) (GREF G3 :E2)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :S))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E2)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2))
                       (* (GREF G1 :E1E3) (GREF G3 :S)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E3))
                       (* (GREF G1 :E1E3) (GREF G3 :E2E3)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E2E3)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2E3))
                       (* (GREF G1 :E1E3) (GREF G3 :E3)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E3)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 IE3) (G3 SE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3) (GREF G3 :S))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2E3) (GREF G3 :S))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3)
                            (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 IE3) (G3 VE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1))
                       (* (GREF G1 :E1E3) (GREF G3 :E2)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :E3)))
                  (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E2) (GREF G2 :E1E2E3))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2E3) (GREF G3 :E1)))
                  (+ (* (GREF G1 :E1E3) (GREF G3 :E3) (GREF G2 :E1E2E3))
                     (* (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :E2)))
                  (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E3) (GREF G2 :E1E2E3))
                     (* (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 IE3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (* -1 (GREF G1 :E1E3) (GREF G3 :E1E2)
                             (GREF G2 :E1E2E3))
                          (* (GREF G1 :E1E2) (GREF G2 :E1E2E3)
                             (GREF G3 :E1E3)))
                         (+
                          (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2)
                             (GREF G2 :E1E2E3))
                          (* (GREF G1 :E1E2) (GREF G2 :E1E2E3)
                             (GREF G3 :E2E3)))
                         0
                         (+
                          (* -1 (GREF G1 :E2E3) (GREF G3 :E1E3)
                             (GREF G2 :E1E2E3))
                          (* (GREF G1 :E1E3) (GREF G2 :E1E2E3)
                             (GREF G3 :E2E3)))
                         0 0
                         (+
                          (*
                           (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E2E3))
                              (* -1 (GREF G1 :E1E3) (GREF G3 :E1E3)))
                           (GREF G2 :E1E2E3))
                          (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3)
                             (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 IE3) (G3 IE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 IE3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (*
                           (+ (* -1 (GREF G1 :E2E3) (GREF G3 :S))
                              (* -1 (GREF G1 :E1E3) (GREF G3 :E1E2)))
                           (GREF G2 :E1E2E3))
                          (* (GREF G1 :E1E2) (GREF G2 :E1E2E3)
                             (GREF G3 :E1E3)))
                         (+
                          (*
                           (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2))
                              (* (GREF G1 :E1E3) (GREF G3 :S)))
                           (GREF G2 :E1E2E3))
                          (* (GREF G1 :E1E2) (GREF G2 :E1E2E3)
                             (GREF G3 :E2E3)))
                         0
                         (+
                          (*
                           (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E3))
                              (* (GREF G1 :E1E3) (GREF G3 :E2E3)))
                           (GREF G2 :E1E2E3))
                          (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3)
                             (GREF G3 :S)))
                         0 0
                         (+
                          (*
                           (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E2E3))
                              (* -1 (GREF G1 :E1E3) (GREF G3 :E1E3)))
                           (GREF G2 :E1E2E3))
                          (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3)
                             (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 RE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E3) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (* -1 (GREF G3 :S) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E2E3)))
                  (+ (* (GREF G2 :E2E3) (GREF G3 :E3) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G2 :E2E3))
                         (* (GREF G3 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :E1E2))
                         (* (GREF G3 :E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E2E3)))
                  (+ (* (GREF G2 :E2E3) (GREF G3 :E1E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E2) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E3)))
                  (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :S) (GREF G2 :E1E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E1) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G2 :E2E3) (GREF G3 :S) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1E2))
                         (* (GREF G3 :S) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G2 :E2E3) (GREF G3 :E1E2) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :S)))
                  (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E2) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E2) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 RE3) (G3 SE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1E2) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                      (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                      (* (GREF G1 :E2E3) (GREF G2 :S)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                      (* (GREF G1 :E1E3) (GREF G2 :S))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 RE3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (*
                           (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                              (* -1 (GREF G3 :E2) (GREF G2 :E2E3)))
                           (GREF G1 :E1E3))
                          (* (GREF G3 :E2) (GREF G1 :E1E2) (GREF G2 :S))
                          (*
                           (+ (* (GREF G2 :E1E3) (GREF G3 :E2))
                              (* -1 (GREF G3 :E1) (GREF G2 :E2E3)))
                           (GREF G1 :E2E3))
                          (* -1 (GREF G3 :E1) (GREF G1 :E1E2) (GREF G2 :E1E2))
                          (*
                           (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                              (* (GREF G1 :E1E3) (GREF G2 :S))
                              (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                           (GREF G3 :E3)))
                         (+
                          (*
                           (+ (* (GREF G2 :E2E3) (GREF G3 :E1))
                              (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                           (GREF G1 :E1E3))
                          (* -1 (GREF G3 :E2) (GREF G1 :E1E2) (GREF G2 :E1E2))
                          (*
                           (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                              (* -1 (GREF G3 :E1) (GREF G2 :E1E3)))
                           (GREF G1 :E2E3))
                          (* -1 (GREF G3 :E1) (GREF G1 :E1E2) (GREF G2 :S))
                          (*
                           (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                              (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                              (* (GREF G1 :E2E3) (GREF G2 :S)))
                           (GREF G3 :E3)))
                         0
                         (+
                          (* -1 (GREF G2 :E2E3) (GREF G3 :E1) (GREF G1 :E1E2))
                          (* -1 (GREF G3 :E3) (GREF G2 :E1E3) (GREF G1 :E1E3))
                          (* -1 (GREF G3 :E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                          (*
                           (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                              (* (GREF G3 :E1) (GREF G2 :E1E2)))
                           (GREF G1 :E2E3))
                          (* -1 (GREF G3 :E1) (GREF G1 :E1E3) (GREF G2 :S))
                          (*
                           (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                              (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                              (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                           (GREF G3 :E2)))
                         0 0
                         (+
                          (* -1 (GREF G2 :E2E3) (GREF G3 :E2) (GREF G1 :E1E2))
                          (* -1 (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E1E3))
                          (*
                           (+ (* (GREF G3 :E3) (GREF G2 :E1E3))
                              (* (GREF G3 :E2) (GREF G2 :E1E2)))
                           (GREF G1 :E2E3))
                          (*
                           (+ (* (GREF G3 :E3) (GREF G1 :E1E2))
                              (* -1 (GREF G3 :E2) (GREF G1 :E1E3)))
                           (GREF G2 :S))
                          (*
                           (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                              (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                              (* (GREF G1 :E2E3) (GREF G2 :S)))
                           (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 RE3) (G3 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E3) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3) (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3) (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E2E3)))
                    (GREF G1 :E1E3))
                   (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2) (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3)))
                    (GREF G1 :E2E3))
                   (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                       (* (GREF G1 :E1E3) (GREF G2 :S))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                    (GREF G1 :E1E3))
                   (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E3)))
                    (GREF G1 :E2E3))
                   (* (GREF G3 :E2E3) (GREF G1 :E1E2) (GREF G2 :S))
                   (*
                    (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                    (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 RE3) (G3 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (*
                          (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                             (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                             (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                          (GREF G3 :E1E2E3))
                         (*
                          (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                             (* (GREF G1 :E1E3) (GREF G2 :S))
                             (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                          (GREF G3 :E1E2E3))
                         0
                         (*
                          (+ (* -1 (GREF G1 :E1E2) (GREF G2 :S))
                             (* (GREF G1 :E1E3) (GREF G2 :E2E3))
                             (* -1 (GREF G1 :E2E3) (GREF G2 :E1E3)))
                          (GREF G3 :E1E2E3))
                         0 0
                         (*
                          (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                             (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                             (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                          (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 BVE3) (G2 RE3) (G3 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E3) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (* -1 (GREF G3 :S) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :S) (GREF G2 :E1E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G2 :E2E3) (GREF G3 :E1E2) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :S)))
                  (+ (* (GREF G2 :E2E3) (GREF G3 :S) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E1E2))
                         (* (GREF G3 :S) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 E3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :S))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E1))
                       (* (GREF G2 :E1E3) (GREF G3 :E2))
                       (* -1 (GREF G2 :E3) (GREF G3 :E1E2))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E3))
                       (* (GREF G2 :E2) (GREF G3 :E1E3))
                       (* -1 (GREF G2 :E1) (GREF G3 :E2E3)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E1))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :S))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E2))
                       (* (GREF G2 :E3) (GREF G3 :E2))
                       (* (GREF G2 :E1E2) (GREF G3 :E1E3))
                       (* -1 (GREF G2 :E2) (GREF G3 :E3))
                       (* -1 (GREF G2 :E1) (GREF G3 :E1E2E3)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E2))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E1E2))
                       (* (GREF G2 :E1E3) (GREF G3 :S))
                       (* -1 (GREF G2 :E3) (GREF G3 :E1))
                       (* (GREF G2 :E1E2) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1E2E3))
                       (* (GREF G2 :E1) (GREF G3 :E3)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E1E2))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E2))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1))
                       (* (GREF G2 :E3) (GREF G3 :S))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2E3))
                       (* (GREF G2 :E2) (GREF G3 :E2E3))
                       (* (GREF G2 :E1) (GREF G3 :E1E3)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E3))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E1E3))
                       (* (GREF G2 :E1E3) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E3) (GREF G3 :E1E2E3))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :S))
                       (* (GREF G2 :E2) (GREF G3 :E1))
                       (* -1 (GREF G2 :E1) (GREF G3 :E2)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E1E3))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E3))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E2E3))
                       (* (GREF G2 :E3) (GREF G3 :E2E3))
                       (* (GREF G2 :E1E2) (GREF G3 :E1))
                       (* -1 (GREF G2 :E2) (GREF G3 :S))
                       (* -1 (GREF G2 :E1) (GREF G3 :E1E2)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E1E2E3))
                       (* (GREF G2 :E1E3) (GREF G3 :E3))
                       (* -1 (GREF G2 :E3) (GREF G3 :E1E3))
                       (* (GREF G2 :E1E2) (GREF G3 :E2))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1E2))
                       (* (GREF G2 :E1) (GREF G3 :S)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3))
                       (* (GREF G2 :E3) (GREF G3 :E3))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2))
                       (* (GREF G2 :E2) (GREF G3 :E2))
                       (* (GREF G2 :E1) (GREF G3 :E1)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 E3) (G3 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :S))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2E3) (GREF G3 :S))
                  (* (GREF G1 :E1E2E3) (GREF G2 :E1E3) (GREF G3 :S))
                  (* (GREF G1 :E1E2E3) (GREF G2 :E3) (GREF G3 :S))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :S))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2) (GREF G3 :S))
                  (* (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :S))
                  (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 E3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1))
                       (* (GREF G2 :E1E3) (GREF G3 :E2)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E1))
                       (* (GREF G2 :E3) (GREF G3 :E2)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E2))
                       (* -1 (GREF G2 :E3) (GREF G3 :E1)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E3))
                       (* (GREF G2 :E2) (GREF G3 :E1)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E3))
                       (* (GREF G2 :E1E2) (GREF G3 :E1)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1E3) (GREF G3 :E3))
                       (* (GREF G2 :E1E2) (GREF G3 :E2)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* (GREF G2 :E3) (GREF G3 :E3))
                       (* (GREF G2 :E2) (GREF G3 :E2)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 E3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E3) (GREF G3 :E1E2))
                       (* (GREF G2 :E2) (GREF G3 :E1E3)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E3) (GREF G3 :E1E2))
                       (* (GREF G2 :E1E2) (GREF G3 :E1E3)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E2))
                       (* (GREF G2 :E1E2) (GREF G3 :E2E3)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E1E2))
                       (* (GREF G2 :E2) (GREF G3 :E2E3)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E3))
                       (* (GREF G2 :E1E3) (GREF G3 :E2E3)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E1E3))
                       (* (GREF G2 :E3) (GREF G3 :E2E3)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E3) (GREF G3 :E1E3)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 E3) (G3 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3)
                     (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 E3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :S))
                       (* -1 (GREF G2 :E3) (GREF G3 :E1E2))
                       (* (GREF G2 :E2) (GREF G3 :E1E3)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :S))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E2))
                       (* (GREF G2 :E1E2) (GREF G3 :E1E3)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E2))
                       (* (GREF G2 :E1E3) (GREF G3 :S))
                       (* (GREF G2 :E1E2) (GREF G3 :E2E3)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E1E2))
                       (* (GREF G2 :E3) (GREF G3 :S))
                       (* (GREF G2 :E2) (GREF G3 :E2E3)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E3))
                       (* (GREF G2 :E1E3) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :S)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E1E3))
                       (* (GREF G2 :E3) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E2) (GREF G3 :S)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E1E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E3) (GREF G3 :E1E3))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1E2)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 SE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E2E3))
                  (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E3))
                  (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E2))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E2))
                  (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1))
                  (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 SE3) (G3 SE3))
  (MAKE-INSTANCE 'IE3 :COEF
                 (VECTOR (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 SE3) (G3 VE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E3))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E2))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 SE3) (G3 BVE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E2E3))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E3))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)
                            (GREF G3 :E1E2))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 SE3) (G3 IE3))
  (MAKE-INSTANCE 'SE3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 SE3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E2E3))
                         (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E3)) 0
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E2))
                         0 0 (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 VE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E3) (GREF G3 :E1E2))
                       (* (GREF G2 :E2) (GREF G3 :E1E3)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E3) (GREF G3 :E2))
                       (* -1 (GREF G2 :E2) (GREF G3 :E3)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E3) (GREF G3 :E1))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1E2E3)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E3) (GREF G3 :S))
                       (* (GREF G2 :E2) (GREF G3 :E2E3)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E3) (GREF G3 :E1E2E3))
                       (* (GREF G2 :E2) (GREF G3 :E1)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G2 :E3) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E2) (GREF G3 :S)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E3) (GREF G3 :E1E3))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1E2)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* (GREF G2 :E3) (GREF G3 :E3))
                       (* (GREF G2 :E2) (GREF G3 :E2)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 VE3) (G3 SE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :E1E2E3) (GREF G2 :E3) (GREF G3 :S))
                         (* (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :S))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 VE3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* (GREF G2 :E3) (GREF G3 :E2) (GREF G1 :E1E2E3))
                            (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2)
                               (GREF G3 :E3)))
                         (+
                          (* -1 (GREF G2 :E3) (GREF G3 :E1) (GREF G1 :E1E2E3))
                          (* (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E3)))
                         0
                         (+ (* (GREF G2 :E2) (GREF G3 :E1) (GREF G1 :E1E2E3))
                            (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1)
                               (GREF G3 :E2)))
                         0 0
                         (+
                          (*
                           (+ (* (GREF G2 :E3) (GREF G3 :E3))
                              (* (GREF G2 :E2) (GREF G3 :E2)))
                           (GREF G1 :E1E2E3))
                          (* (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 VE3) (G3 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E3) (GREF G3 :E1E2))
                       (* (GREF G2 :E2) (GREF G3 :E1E3)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E2E3)))
                  (+ (* (GREF G2 :E2) (GREF G3 :E2E3) (GREF G1 :E1E2E3))
                     (* (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G2 :E3) (GREF G3 :E1E3) (GREF G1 :E1E2E3))
                     (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2) (GREF G3 :E1E2)))
                  (+ (* (GREF G2 :E3) (GREF G3 :E2E3) (GREF G1 :E1E2E3))
                     (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 VE3) (G3 IE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E3) (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 VE3) (G3 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E3) (GREF G3 :E1E2))
                       (* (GREF G2 :E2) (GREF G3 :E1E3)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E3) (GREF G3 :S))
                       (* (GREF G2 :E2) (GREF G3 :E2E3)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E3) (GREF G3 :E1E3))
                       (* -1 (GREF G2 :E2) (GREF G3 :E1E2)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* (GREF G2 :E3) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E2) (GREF G3 :S)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 BVE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1))
                       (* (GREF G2 :E1E3) (GREF G3 :E2)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :S))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E2)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E2))
                       (* (GREF G2 :E1E3) (GREF G3 :S)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E3))
                       (* (GREF G2 :E1E3) (GREF G3 :E2E3)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E3))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E2E3)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E2E3))
                       (* (GREF G2 :E1E3) (GREF G3 :E3)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 BVE3) (G3 SE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2E3) (GREF G3 :S))
                         (* (GREF G1 :E1E2E3) (GREF G2 :E1E3) (GREF G3 :S))
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)
                            (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 BVE3) (G3 VE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1))
                       (* (GREF G2 :E1E3) (GREF G3 :E2)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :E3)))
                  (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2) (GREF G1 :E1E2E3))
                     (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E3) (GREF G3 :E1)))
                  (+ (* (GREF G2 :E1E3) (GREF G3 :E3) (GREF G1 :E1E2E3))
                     (* (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :E2)))
                  (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E3) (GREF G1 :E1E2E3))
                     (* (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 BVE3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (* -1 (GREF G2 :E1E3) (GREF G3 :E1E2)
                             (GREF G1 :E1E2E3))
                          (* (GREF G1 :E1E2E3) (GREF G2 :E1E2)
                             (GREF G3 :E1E3)))
                         (+
                          (* -1 (GREF G2 :E2E3) (GREF G3 :E1E2)
                             (GREF G1 :E1E2E3))
                          (* (GREF G1 :E1E2E3) (GREF G2 :E1E2)
                             (GREF G3 :E2E3)))
                         0
                         (+
                          (* -1 (GREF G2 :E2E3) (GREF G3 :E1E3)
                             (GREF G1 :E1E2E3))
                          (* (GREF G1 :E1E2E3) (GREF G2 :E1E3)
                             (GREF G3 :E2E3)))
                         0 0
                         (+
                          (*
                           (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3))
                              (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3)))
                           (GREF G1 :E1E2E3))
                          (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)
                             (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 BVE3) (G3 IE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E3) (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 BVE3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (*
                           (+ (* -1 (GREF G2 :E2E3) (GREF G3 :S))
                              (* -1 (GREF G2 :E1E3) (GREF G3 :E1E2)))
                           (GREF G1 :E1E2E3))
                          (* (GREF G1 :E1E2E3) (GREF G2 :E1E2)
                             (GREF G3 :E1E3)))
                         (+
                          (*
                           (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E2))
                              (* (GREF G2 :E1E3) (GREF G3 :S)))
                           (GREF G1 :E1E2E3))
                          (* (GREF G1 :E1E2E3) (GREF G2 :E1E2)
                             (GREF G3 :E2E3)))
                         0
                         (+
                          (*
                           (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E3))
                              (* (GREF G2 :E1E3) (GREF G3 :E2E3)))
                           (GREF G1 :E1E2E3))
                          (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)
                             (GREF G3 :S)))
                         0 0
                         (+
                          (*
                           (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3))
                              (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3)))
                           (GREF G1 :E1E2E3))
                          (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)
                             (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 IE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :S))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :E1))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :E2))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :E1E2))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :E1E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3)
                     (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 IE3) (G3 SE3))
  (MAKE-INSTANCE 'SE3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 IE3) (G3 VE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :E1))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :E2))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :E3))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 IE3) (G3 BVE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :E1E2))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :E1E3))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 IE3) (G3 IE3))
  (MAKE-INSTANCE 'IE3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3)
                     (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 IE3) (G3 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :S))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :E1E2))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3) (GREF G3 :E1E3))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 RE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1))
                       (* (GREF G2 :E1E3) (GREF G3 :E2))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E3)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :S))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E2))
                       (* (GREF G2 :E1E2) (GREF G3 :E1E3)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E2))
                       (* (GREF G2 :E1E3) (GREF G3 :S))
                       (* (GREF G2 :E1E2) (GREF G3 :E2E3)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2E3)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E3))
                       (* (GREF G2 :E1E3) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :S)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E3))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E2E3))
                       (* (GREF G2 :E1E2) (GREF G3 :E1)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E2E3))
                       (* (GREF G2 :E1E3) (GREF G3 :E3))
                       (* (GREF G2 :E1E2) (GREF G3 :E2)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 RE3) (G3 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2E3) (GREF G3 :S))
                         (* (GREF G1 :E1E2E3) (GREF G2 :E1E3) (GREF G3 :S)) 0
                         (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :S))
                         0 0 (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 RE3) (G3 VE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1))
                       (* (GREF G2 :E1E3) (GREF G3 :E2)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G2 :E1E3) (GREF G3 :E3))
                       (* (GREF G2 :E1E2) (GREF G3 :E2)))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E3))
                       (* (GREF G2 :E1E2) (GREF G3 :E1)))
                    (GREF G1 :E1E2E3))
                   (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E2)))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 RE3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (*
                           (+ (* -1 (GREF G2 :E1E3) (GREF G3 :E1E2))
                              (* (GREF G2 :E1E2) (GREF G3 :E1E3)))
                           (GREF G1 :E1E2E3))
                          (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)
                             (GREF G3 :E2E3)))
                         (+
                          (*
                           (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E2))
                              (* (GREF G2 :E1E2) (GREF G3 :E2E3)))
                           (GREF G1 :E1E2E3))
                          (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E3)))
                         0
                         (+
                          (*
                           (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E3))
                              (* (GREF G2 :E1E3) (GREF G3 :E2E3)))
                           (GREF G1 :E1E2E3))
                          (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)
                             (GREF G3 :E1E2)))
                         0 0
                         (+
                          (*
                           (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3))
                              (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3)))
                           (GREF G1 :E1E2E3))
                          (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2)
                             (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 RE3) (G3 IE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E3) (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 IE3) (G2 RE3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (*
                           (+ (* -1 (GREF G2 :E2E3) (GREF G3 :S))
                              (* -1 (GREF G2 :E1E3) (GREF G3 :E1E2))
                              (* (GREF G2 :E1E2) (GREF G3 :E1E3)))
                           (GREF G1 :E1E2E3))
                          (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)
                             (GREF G3 :E2E3)))
                         (+
                          (*
                           (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E2))
                              (* (GREF G2 :E1E3) (GREF G3 :S))
                              (* (GREF G2 :E1E2) (GREF G3 :E2E3)))
                           (GREF G1 :E1E2E3))
                          (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :E1E3)))
                         0
                         (+
                          (*
                           (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E1E3))
                              (* (GREF G2 :E1E3) (GREF G3 :E2E3))
                              (* -1 (GREF G2 :E1E2) (GREF G3 :S)))
                           (GREF G1 :E1E2E3))
                          (* -1 (GREF G1 :E1E2E3) (GREF G2 :S)
                             (GREF G3 :E1E2)))
                         0 0
                         (+
                          (*
                           (+ (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3))
                              (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3))
                              (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2)))
                           (GREF G1 :E1E2E3))
                          (* (GREF G1 :E1E2E3) (GREF G2 :S) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 E3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2))
                       (* (GREF G3 :S) (GREF G2 :S))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E2E3)))
                    (GREF G1 :S))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :S) (GREF G2 :E1E2))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :S))
                       (* (GREF G2 :E1E3) (GREF G3 :E2E3))
                       (* -1 (GREF G3 :E3) (GREF G2 :E1E2E3)))
                    (GREF G1 :E1E2))
                   (* (GREF G3 :E3) (GREF G1 :S) (GREF G2 :E3))
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :S) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :S))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E2E3))
                       (* (GREF G3 :E2) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :S))
                       (* (GREF G3 :E1) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E1E2))
                       (* -1 (GREF G2 :S) (GREF G3 :E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E2) (GREF G2 :E3))
                       (* -1 (GREF G3 :E3) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G1 :S))
                       (* -1 (GREF G3 :E2) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E3) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                       (* (GREF G1 :E1E3) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* (GREF G3 :E3) (GREF G2 :E1E3))
                       (* (GREF G3 :E2) (GREF G2 :E1E2))
                       (* (GREF G3 :E1) (GREF G2 :S))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E1E2E3)))
                    (GREF G1 :S))
                   (*
                    (+ (* (GREF G3 :E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E2))
                       (* (GREF G3 :E2) (GREF G2 :S))
                       (* (GREF G2 :E1E3) (GREF G3 :E1E2E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E1E2E3)))
                    (GREF G1 :E1E2))
                   (* -1 (GREF G3 :E1E3) (GREF G1 :S) (GREF G2 :E3))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                       (* (GREF G3 :E3) (GREF G2 :S))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                       (* (GREF G3 :S) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                       (* (GREF G3 :S) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G2 :E2E3))
                       (* (GREF G3 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E3) (GREF G2 :E1E2))
                       (* -1 (GREF G2 :S) (GREF G3 :E1E2E3))
                       (* -1 (GREF G3 :S) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :S) (GREF G1 :S))
                       (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                       (* (GREF G3 :E1E3) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                       (* (GREF G1 :E1E3) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G3 :E1E2E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E2))
                       (* (GREF G3 :E2) (GREF G2 :S))
                       (* (GREF G2 :E2E3) (GREF G3 :E3)))
                    (GREF G1 :S))
                   (*
                    (+ (* (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E1E2))
                       (* -1 (GREF G3 :E1) (GREF G2 :S))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E2E3)))
                    (GREF G1 :E1E2))
                   (* -1 (GREF G3 :E2E3) (GREF G1 :S) (GREF G2 :E3))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E1E3))
                       (* (GREF G3 :E1E2E3) (GREF G2 :S))
                       (* (GREF G2 :E1E2) (GREF G3 :E3))
                       (* (GREF G3 :S) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1E2) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :S) (GREF G1 :S))
                       (* (GREF G3 :E1E2) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2))
                       (* (GREF G2 :S) (GREF G3 :E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                       (* (GREF G3 :S) (GREF G2 :E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                       (* -1 (GREF G3 :S) (GREF G1 :E1E2))
                       (* (GREF G3 :E2E3) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                       (* (GREF G1 :E1E2) (GREF G2 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                       (* (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3))
                       (* (GREF G3 :S) (GREF G2 :E1E2))
                       (* (GREF G3 :E1E2) (GREF G2 :S))
                       (* (GREF G2 :E2E3) (GREF G3 :E1E3)))
                    (GREF G1 :S))
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2))
                       (* (GREF G3 :S) (GREF G2 :S))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2E3)))
                    (GREF G1 :E1E2))
                   (* (GREF G3 :E1E2E3) (GREF G1 :S) (GREF G2 :E3))
                   (*
                    (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :S))
                       (* (GREF G2 :E1E2) (GREF G3 :E1E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E2) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G1 :S))
                       (* (GREF G3 :E2) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                       (* (GREF G3 :S) (GREF G2 :E1E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E2))
                       (* (GREF G2 :S) (GREF G3 :E1E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :S))
                       (* (GREF G3 :E1) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                       (* (GREF G1 :E1E2) (GREF G2 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                       (* (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2))
                       (* (GREF G3 :E3) (GREF G2 :S))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E2)))
                    (GREF G1 :S))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E3) (GREF G2 :E1E2))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :S))
                       (* (GREF G2 :E1E3) (GREF G3 :E2))
                       (* -1 (GREF G3 :S) (GREF G2 :E1E2E3)))
                    (GREF G1 :E1E2))
                   (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :E3))
                   (*
                    (+ (* (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :S))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E2))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* (GREF G3 :E1E3) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3))
                       (* (GREF G3 :E1) (GREF G2 :E1E2))
                       (* -1 (GREF G2 :S) (GREF G3 :E2))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E3))
                       (* -1 (GREF G3 :S) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :S) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                       (* (GREF G1 :E1E3) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G3 :S) (GREF G2 :E1E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E2))
                       (* (GREF G3 :E1E3) (GREF G2 :S))
                       (* -1 (GREF G2 :E2E3) (GREF G3 :E1E2)))
                    (GREF G1 :S))
                   (*
                    (+ (* (GREF G3 :S) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2))
                       (* (GREF G3 :E2E3) (GREF G2 :S))
                       (* (GREF G2 :E1E3) (GREF G3 :E1E2))
                       (* (GREF G3 :E1) (GREF G2 :E1E2E3)))
                    (GREF G1 :E1E2))
                   (* -1 (GREF G3 :E1) (GREF G1 :S) (GREF G2 :E3))
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                       (* (GREF G3 :S) (GREF G2 :S))
                       (* -1 (GREF G2 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E3) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E2E3) (GREF G1 :S))
                       (* (GREF G3 :E3) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :S) (GREF G2 :E1E2))
                       (* -1 (GREF G2 :S) (GREF G3 :E1E2))
                       (* -1 (GREF G3 :E3) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E3))
                       (* (GREF G3 :E1) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E3) (GREF G1 :S))
                       (* (GREF G3 :E1E2E3) (GREF G1 :E1E2))
                       (* (GREF G3 :E1) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                       (* (GREF G1 :E1E3) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2))
                       (* (GREF G3 :E2E3) (GREF G2 :S))
                       (* (GREF G2 :E2E3) (GREF G3 :S)))
                    (GREF G1 :S))
                   (*
                    (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :S))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :S))
                       (* (GREF G3 :E2) (GREF G2 :E1E2E3)))
                    (GREF G1 :E1E2))
                   (* -1 (GREF G3 :E2) (GREF G1 :S) (GREF G2 :E3))
                   (*
                    (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3))
                       (* (GREF G3 :E1E2) (GREF G2 :S))
                       (* (GREF G2 :E1E2) (GREF G3 :S))
                       (* (GREF G3 :E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1E2E3) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E3) (GREF G1 :S))
                       (* (GREF G3 :E1E2E3) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2))
                       (* (GREF G2 :S) (GREF G3 :S))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E3) (GREF G2 :E3))
                       (* (GREF G3 :E2) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E1E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E3) (GREF G1 :E1E2))
                       (* (GREF G3 :E2) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                       (* (GREF G1 :E1E2) (GREF G2 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                       (* (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E3))
                       (* (GREF G3 :E3) (GREF G2 :E1E2))
                       (* (GREF G3 :E1E2E3) (GREF G2 :S))
                       (* (GREF G2 :E2E3) (GREF G3 :E1)))
                    (GREF G1 :S))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2))
                       (* (GREF G3 :E3) (GREF G2 :S))
                       (* -1 (GREF G2 :E1E3) (GREF G3 :E1))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3)))
                    (GREF G1 :E1E2))
                   (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E3))
                   (*
                    (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :S))
                       (* (GREF G2 :E1E2) (GREF G3 :E1))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                       (* (GREF G3 :E2E3) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                       (* (GREF G3 :E3) (GREF G2 :E1E3))
                       (* (GREF G3 :E2) (GREF G2 :E1E2))
                       (* (GREF G2 :S) (GREF G3 :E1))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                       (* -1 (GREF G3 :E1E2) (GREF G2 :E2)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* (GREF G3 :E1E3) (GREF G1 :E1E2))
                       (* -1 (GREF G3 :E1E2) (GREF G1 :E1E3)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                       (* (GREF G1 :E1E2) (GREF G2 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                       (* (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 E3) (G3 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1))
                      (* (GREF G1 :E1E2) (GREF G2 :E2))
                      (* (GREF G1 :E1E3) (GREF G2 :E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E2))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                      (* (GREF G1 :E1E3) (GREF G2 :E1E2E3))
                      (* (GREF G1 :E2E3) (GREF G2 :E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                      (* (GREF G1 :E1E2) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                      (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E3))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                      (* (GREF G1 :E1E3) (GREF G2 :S))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                      (* (GREF G1 :E2E3) (GREF G2 :S)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                      (* (GREF G1 :E1E2) (GREF G2 :E3))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                      (* (GREF G1 :E2E3) (GREF G2 :E1)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 E3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G3 :E1) (GREF G2 :E3))
                       (* (GREF G3 :E2) (GREF G2 :E1E2E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G1 :S))
                       (* -1 (GREF G3 :E2) (GREF G1 :E1E2)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G2 :E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E2E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :S))
                       (* (GREF G3 :E1) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E3))
                       (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                    (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E2E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E1) (GREF G1 :S))
                       (* (GREF G3 :E2) (GREF G1 :E1E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E2E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :S))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                       (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                       (* (GREF G1 :E1E3) (GREF G2 :S))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                    (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G1 :S))
                       (* -1 (GREF G3 :E2) (GREF G1 :E1E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E1E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :S))
                       (* -1 (GREF G3 :E1) (GREF G1 :E1E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                       (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                       (* (GREF G1 :E2E3) (GREF G2 :S)))
                    (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E2) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* -1 (GREF G3 :E1) (GREF G1 :S))
                       (* (GREF G3 :E2) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E2) (GREF G2 :E1E2E3))
                       (* -1 (GREF G3 :E1) (GREF G2 :E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E2) (GREF G1 :S))
                       (* (GREF G3 :E1) (GREF G1 :E1E2)))
                    (GREF G2 :E1))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                       (* (GREF G1 :E1E2) (GREF G2 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                       (* (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E3)))
                  (+ (* -1 (GREF G3 :E1) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1) (GREF G1 :S) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E3) (GREF G2 :E1E3) (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E1) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :E1) (GREF G2 :E1E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1) (GREF G1 :S) (GREF G2 :E3))
                     (* (GREF G3 :E3) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E3) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :S))
                         (* (GREF G3 :E1) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :E2) (GREF G2 :E1E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2) (GREF G1 :S) (GREF G2 :E3))
                     (* (GREF G3 :E3) (GREF G2 :E1E2E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E3) (GREF G1 :S) (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G2 :E3))
                         (* (GREF G3 :E2) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E2) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2) (GREF G1 :S) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E3) (GREF G1 :S) (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E2) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E2) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 E3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E2E3)))
                  (+ (* (GREF G3 :E1E3) (GREF G2 :E1E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :S) (GREF G2 :E3))
                     (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3) (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2E3)))
                  (+ (* (GREF G3 :E2E3) (GREF G2 :E1E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :S) (GREF G2 :E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3) (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* (GREF G3 :E1E3) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                       (* (GREF G1 :E1E3) (GREF G2 :E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                       (* (GREF G3 :E2E3) (GREF G1 :E1E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                       (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E2E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                       (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                       (* (GREF G1 :E1E3) (GREF G2 :S))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G2 :E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* (GREF G3 :E1E3) (GREF G1 :E1E2)))
                    (GREF G2 :E1))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                       (* (GREF G3 :E2E3) (GREF G1 :E1E2)))
                    (GREF G2 :E2))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E3))
                       (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                    (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 E3) (G3 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                      (* (GREF G1 :E1E3) (GREF G2 :E2))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                      (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                      (* (GREF G1 :E1E3) (GREF G2 :S))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E3))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :S))
                      (* (GREF G1 :E1E3) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E2))
                      (* (GREF G1 :E1E2) (GREF G2 :E1))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1))
                      (* (GREF G1 :E1E2) (GREF G2 :E2))
                      (* (GREF G1 :E1E3) (GREF G2 :E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                   (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 E3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E2E3)))
                  (+ (* (GREF G3 :E1E3) (GREF G2 :E1E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :S) (GREF G2 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* (GREF G3 :S) (GREF G2 :E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                         (* (GREF G3 :S) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2E3)))
                  (+ (* (GREF G3 :E2E3) (GREF G2 :E1E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :S) (GREF G2 :E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E2) (GREF G2 :E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3))
                         (* (GREF G3 :S) (GREF G2 :E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E2))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :S) (GREF G2 :E1E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* (GREF G3 :S) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G3 :S) (GREF G2 :E1E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :S) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E2))
                         (* (GREF G3 :S) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :S)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 SE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :S))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1))
                       (* (GREF G1 :E1E2) (GREF G3 :E2))
                       (* (GREF G1 :E1E3) (GREF G3 :E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E2))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1))
                       (* (GREF G1 :E1E3) (GREF G3 :E1E2E3)))
                    (GREF G2 :S))
                   (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1E2))
                       (* (GREF G1 :E1E2) (GREF G3 :S))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E2E3)))
                    (GREF G2 :S))
                   (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E2E3))
                       (* (GREF G1 :E1E3) (GREF G3 :S)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E3))
                       (* (GREF G1 :E1E3) (GREF G3 :E1E2)))
                    (GREF G2 :S))
                   (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1E2E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E2)))
                    (GREF G2 :S))
                   (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 SE3) (G3 SE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :S))
                         (* (GREF G1 :E1E3) (GREF G2 :S) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 SE3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (*
                           (+ (* (GREF G1 :S) (GREF G3 :E1))
                              (* (GREF G1 :E1E2) (GREF G3 :E2)))
                           (GREF G2 :S))
                          (* (GREF G1 :E1E3) (GREF G2 :S) (GREF G3 :E3)))
                         (+
                          (*
                           (+ (* (GREF G1 :S) (GREF G3 :E2))
                              (* -1 (GREF G1 :E1E2) (GREF G3 :E1)))
                           (GREF G2 :S))
                          (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E3)))
                         0
                         (+
                          (*
                           (+ (* (GREF G1 :S) (GREF G3 :E3))
                              (* -1 (GREF G1 :E1E3) (GREF G3 :E1)))
                           (GREF G2 :S))
                          (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E2)))
                         0 0
                         (+
                          (*
                           (+ (* (GREF G1 :E1E2) (GREF G3 :E3))
                              (* -1 (GREF G1 :E1E3) (GREF G3 :E2)))
                           (GREF G2 :S))
                          (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 SE3) (G3 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E2E3)))
                    (GREF G2 :S))
                   (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E3)))
                    (GREF G2 :S))
                   (* (GREF G1 :E1E3) (GREF G2 :S) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E2E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 SE3) (G3 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E2E3))
                         (* (GREF G1 :E1E3) (GREF G2 :S) (GREF G3 :E1E2E3)) 0
                         (* -1 (GREF G1 :E1E2) (GREF G2 :S) (GREF G3 :E1E2E3))
                         0 0 (* (GREF G1 :S) (GREF G2 :S) (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 SE3) (G3 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :S))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E3)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1E2))
                       (* (GREF G1 :E1E2) (GREF G3 :S))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E2E3)))
                    (GREF G2 :S))
                   (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E3))
                       (* (GREF G1 :E1E3) (GREF G3 :E1E2)))
                    (GREF G2 :S))
                   (* (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :S)))
                  (+
                   (*
                    (+ (* (GREF G1 :S) (GREF G3 :E1E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E2E3))
                       (* (GREF G1 :E1E3) (GREF G3 :S)))
                    (GREF G2 :S))
                   (* -1 (GREF G1 :E2E3) (GREF G2 :S) (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 VE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G3 :E3) (GREF G2 :E3))
                     (* (GREF G3 :E1) (GREF G2 :E3) (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :S))
                         (* (GREF G3 :E1) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G2 :E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G1 :S))
                         (* -1 (GREF G3 :E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E2E3)))
                  (+ (* -1 (GREF G1 :S) (GREF G3 :E1E3) (GREF G2 :E3))
                     (* (GREF G3 :S) (GREF G2 :E3) (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                         (* (GREF G3 :S) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G1 :S) (GREF G3 :E2E3) (GREF G2 :E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E3) (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :S) (GREF G2 :E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E2))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G1 :S) (GREF G3 :E1E2E3) (GREF G2 :E3))
                     (* (GREF G3 :E2) (GREF G2 :E3) (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G1 :S))
                         (* (GREF G3 :E2) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G2 :E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :S))
                         (* (GREF G3 :E1) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E3)))
                  (+ (* (GREF G1 :S) (GREF G3 :S) (GREF G2 :E3))
                     (* (GREF G3 :E1E3) (GREF G2 :E3) (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G1 :S) (GREF G3 :E1) (GREF G2 :E3))
                     (* (GREF G3 :E3) (GREF G2 :E3) (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G1 :S))
                         (* (GREF G3 :E3) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :E3))
                         (* (GREF G3 :E1) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :S))
                         (* (GREF G3 :E1E2E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E1) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G1 :S) (GREF G3 :E2) (GREF G2 :E3))
                     (* (GREF G3 :E1E2E3) (GREF G2 :E3) (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :S))
                         (* (GREF G3 :E1E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G2 :E3))
                         (* (GREF G3 :E2) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E2) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1)))
                  (+ (* (GREF G1 :S) (GREF G3 :E1E2) (GREF G2 :E3))
                     (* (GREF G3 :E2E3) (GREF G2 :E3) (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* (GREF G3 :E1E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 VE3) (G3 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (*
                          (+ (* (GREF G1 :S) (GREF G2 :E1))
                             (* (GREF G1 :E1E2) (GREF G2 :E2))
                             (* (GREF G1 :E1E3) (GREF G2 :E3)))
                          (GREF G3 :S))
                         (*
                          (+ (* (GREF G1 :S) (GREF G2 :E2))
                             (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                             (* (GREF G1 :E2E3) (GREF G2 :E3)))
                          (GREF G3 :S))
                         0
                         (*
                          (+ (* (GREF G1 :S) (GREF G2 :E3))
                             (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                             (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                          (GREF G3 :S))
                         0 0
                         (*
                          (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                             (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                             (* (GREF G1 :E2E3) (GREF G2 :E1)))
                          (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 VE3) (G3 VE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* (GREF G3 :E1) (GREF G2 :E3) (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G3 :E2))
                         (* (GREF G3 :E1) (GREF G1 :S)))
                      (GREF G2 :E1))
                     (* (GREF G3 :E2) (GREF G2 :E3) (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G1 :E1E2))
                         (* (GREF G3 :E2) (GREF G1 :S)))
                      (GREF G2 :E2))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                      (GREF G3 :E3)))
                  (+ (* (GREF G3 :E2) (GREF G2 :E3) (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G3 :E1))
                         (* (GREF G3 :E2) (GREF G1 :E1E2)))
                      (GREF G2 :E2))
                     (* -1 (GREF G3 :E1) (GREF G2 :E3) (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :S))
                         (* (GREF G3 :E1) (GREF G1 :E1E2)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E3)))
                  (+ (* -1 (GREF G1 :S) (GREF G3 :E2) (GREF G2 :E3))
                     (* (GREF G3 :E3) (GREF G1 :S) (GREF G2 :E2))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G2 :E3))
                         (* (GREF G3 :E2) (GREF G2 :E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E2) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                         (* (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E1)))
                  (+ (* -1 (GREF G1 :S) (GREF G3 :E1) (GREF G2 :E3))
                     (* (GREF G3 :E3) (GREF G2 :E3) (GREF G1 :E1E3))
                     (* (GREF G3 :E3) (GREF G1 :E1E2) (GREF G2 :E2))
                     (* (GREF G3 :E1) (GREF G2 :E2) (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :S))
                         (* (GREF G3 :E1) (GREF G1 :E1E3)))
                      (GREF G2 :E1))
                     (*
                      (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                      (GREF G3 :E2)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 VE3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* -1 (GREF G1 :S) (GREF G3 :E1E3) (GREF G2 :E3))
                            (* -1 (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E2))
                            (*
                             (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                                (* (GREF G3 :E1E3) (GREF G2 :E2)))
                             (GREF G1 :E2E3))
                            (*
                             (+ (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                                (* (GREF G3 :E1E3) (GREF G1 :E1E3)))
                             (GREF G2 :E1))
                            (*
                             (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                                (* (GREF G1 :E1E3) (GREF G2 :E2))
                                (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                             (GREF G3 :E2E3)))
                         (+ (* -1 (GREF G1 :S) (GREF G3 :E2E3) (GREF G2 :E3))
                            (* (GREF G3 :E1E2) (GREF G2 :E3) (GREF G1 :E1E3))
                            (* (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E2))
                            (* (GREF G3 :E2E3) (GREF G2 :E2) (GREF G1 :E2E3))
                            (*
                             (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                                (* (GREF G3 :E2E3) (GREF G1 :E1E3)))
                             (GREF G2 :E1))
                            (*
                             (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                                (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                                (* (GREF G1 :E2E3) (GREF G2 :E1)))
                             (GREF G3 :E1E3)))
                         0
                         (+ (* (GREF G3 :E1E3) (GREF G2 :E3) (GREF G1 :E1E3))
                            (*
                             (+ (* (GREF G1 :S) (GREF G3 :E2E3))
                                (* (GREF G3 :E1E3) (GREF G1 :E1E2)))
                             (GREF G2 :E2))
                            (* (GREF G3 :E2E3) (GREF G2 :E3) (GREF G1 :E2E3))
                            (*
                             (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                                (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                             (GREF G2 :E1))
                            (*
                             (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                                (* (GREF G1 :E1E3) (GREF G2 :E2))
                                (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                             (GREF G3 :E1E2)))
                         0 0
                         (+ (* (GREF G3 :E2E3) (GREF G2 :E3) (GREF G1 :E1E3))
                            (*
                             (+ (* (GREF G1 :E1E2) (GREF G3 :E1E3))
                                (* (GREF G3 :E2E3) (GREF G1 :S)))
                             (GREF G2 :E1))
                            (* -1 (GREF G3 :E1E3) (GREF G2 :E3)
                               (GREF G1 :E2E3))
                            (*
                             (+ (* (GREF G3 :E2E3) (GREF G1 :E1E2))
                                (* -1 (GREF G3 :E1E3) (GREF G1 :S)))
                             (GREF G2 :E2))
                            (*
                             (+ (* (GREF G1 :S) (GREF G2 :E3))
                                (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                                (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                             (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 VE3) (G3 IE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                      (* (GREF G1 :E1E3) (GREF G2 :E2))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E3))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1))
                      (* (GREF G1 :E1E2) (GREF G2 :E2))
                      (* (GREF G1 :E1E3) (GREF G2 :E3)))
                   (GREF G3 :E1E2E3))
                  (*
                   (+ (* -1 (GREF G1 :S) (GREF G2 :E2))
                      (* (GREF G1 :E1E2) (GREF G2 :E1))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E3)))
                   (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 VE3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* -1 (GREF G1 :S) (GREF G3 :E1E3) (GREF G2 :E3))
                            (* (GREF G3 :S) (GREF G2 :E3) (GREF G1 :E1E3))
                            (*
                             (+ (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                                (* (GREF G3 :S) (GREF G1 :E1E2)))
                             (GREF G2 :E2))
                            (*
                             (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E3))
                                (* (GREF G3 :E1E3) (GREF G2 :E2)))
                             (GREF G1 :E2E3))
                            (*
                             (+ (* (GREF G3 :S) (GREF G1 :S))
                                (* (GREF G3 :E1E2) (GREF G1 :E1E2))
                                (* (GREF G3 :E1E3) (GREF G1 :E1E3)))
                             (GREF G2 :E1))
                            (*
                             (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                                (* (GREF G1 :E1E3) (GREF G2 :E2))
                                (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                             (GREF G3 :E2E3)))
                         (+ (* -1 (GREF G1 :S) (GREF G3 :E2E3) (GREF G2 :E3))
                            (* (GREF G3 :E1E2) (GREF G2 :E3) (GREF G1 :E1E3))
                            (*
                             (+ (* (GREF G3 :S) (GREF G1 :S))
                                (* (GREF G3 :E1E2) (GREF G1 :E1E2)))
                             (GREF G2 :E2))
                            (*
                             (+ (* (GREF G3 :S) (GREF G2 :E3))
                                (* (GREF G3 :E2E3) (GREF G2 :E2)))
                             (GREF G1 :E2E3))
                            (*
                             (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                                (* -1 (GREF G3 :S) (GREF G1 :E1E2))
                                (* (GREF G3 :E2E3) (GREF G1 :E1E3)))
                             (GREF G2 :E1))
                            (*
                             (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                                (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                                (* (GREF G1 :E2E3) (GREF G2 :E1)))
                             (GREF G3 :E1E3)))
                         0
                         (+ (* (GREF G1 :S) (GREF G3 :S) (GREF G2 :E3))
                            (* (GREF G3 :E1E3) (GREF G2 :E3) (GREF G1 :E1E3))
                            (*
                             (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                                (* (GREF G3 :E1E3) (GREF G1 :E1E2)))
                             (GREF G2 :E2))
                            (*
                             (+ (* (GREF G3 :E2E3) (GREF G2 :E3))
                                (* -1 (GREF G3 :S) (GREF G2 :E2)))
                             (GREF G1 :E2E3))
                            (*
                             (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                                (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2))
                                (* -1 (GREF G3 :S) (GREF G1 :E1E3)))
                             (GREF G2 :E1))
                            (*
                             (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E3))
                                (* (GREF G1 :E1E3) (GREF G2 :E2))
                                (* -1 (GREF G1 :E2E3) (GREF G2 :E1)))
                             (GREF G3 :E1E2)))
                         0 0
                         (+ (* (GREF G1 :S) (GREF G3 :E1E2) (GREF G2 :E3))
                            (* (GREF G3 :E2E3) (GREF G2 :E3) (GREF G1 :E1E3))
                            (*
                             (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                                (* (GREF G3 :E2E3) (GREF G1 :E1E2)))
                             (GREF G2 :E2))
                            (*
                             (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E3))
                                (* -1 (GREF G3 :E1E2) (GREF G2 :E2)))
                             (GREF G1 :E2E3))
                            (*
                             (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                                (* (GREF G3 :E1E3) (GREF G1 :E1E2))
                                (* -1 (GREF G3 :E1E2) (GREF G1 :E1E3)))
                             (GREF G2 :E1))
                            (*
                             (+ (* (GREF G1 :E1E2) (GREF G2 :E3))
                                (* -1 (GREF G1 :E1E3) (GREF G2 :E2))
                                (* (GREF G1 :E2E3) (GREF G2 :E1)))
                             (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 BVE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :S) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E1) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :E2E3))
                         (* (GREF G3 :E3) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E3))
                         (* (GREF G3 :E2) (GREF G1 :S))
                         (* -1 (GREF G3 :E1) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2E3)))
                  (+ (* -1 (GREF G3 :E2) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* (GREF G3 :E1E2E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G1 :E2E3))
                         (* (GREF G3 :E1E2E3) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2E3))
                         (* -1 (GREF G3 :E1) (GREF G1 :S))
                         (* -1 (GREF G3 :E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E3)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E2E3))
                         (* (GREF G3 :S) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G3 :E3) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G3 :E1) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G1 :E2E3))
                         (* -1 (GREF G3 :E1) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E1))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2)))
                  (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* (GREF G3 :S) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E2E3))
                         (* (GREF G3 :S) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G1 :E2E3) (GREF G3 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E2E3))
                         (* (GREF G3 :E1E2) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :S)))
                  (+ (* -1 (GREF G3 :E1E2E3) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G3 :E2) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :E2E3))
                         (* -1 (GREF G3 :E2) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E2))
                         (* (GREF G3 :E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 BVE3) (G3 SE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (*
                   (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                      (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 BVE3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (* -1 (GREF G3 :E1) (GREF G1 :E1E3) (GREF G2 :E1E3))
                          (* -1 (GREF G1 :E1E3) (GREF G3 :E2) (GREF G2 :E2E3))
                          (*
                           (+ (* (GREF G3 :E2) (GREF G2 :E1E3))
                              (* -1 (GREF G3 :E1) (GREF G2 :E2E3)))
                           (GREF G1 :E2E3))
                          (*
                           (+ (* (GREF G3 :E2) (GREF G1 :S))
                              (* -1 (GREF G3 :E1) (GREF G1 :E1E2)))
                           (GREF G2 :E1E2))
                          (*
                           (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                              (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                              (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                           (GREF G3 :E3)))
                         (+
                          (* -1 (GREF G3 :E2) (GREF G1 :E2E3) (GREF G2 :E2E3))
                          (* -1 (GREF G1 :E2E3) (GREF G3 :E1) (GREF G2 :E1E3))
                          (*
                           (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                              (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                           (GREF G1 :E1E3))
                          (*
                           (+ (* -1 (GREF G3 :E1) (GREF G1 :S))
                              (* -1 (GREF G3 :E2) (GREF G1 :E1E2)))
                           (GREF G2 :E1E2))
                          (*
                           (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                              (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                              (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                           (GREF G3 :E3)))
                         0
                         (+
                          (* -1 (GREF G3 :E3) (GREF G1 :E2E3) (GREF G2 :E2E3))
                          (* -1 (GREF G3 :E1) (GREF G2 :E2E3) (GREF G1 :E1E2))
                          (* -1 (GREF G3 :E1) (GREF G1 :S) (GREF G2 :E1E3))
                          (* -1 (GREF G3 :E3) (GREF G2 :E1E3) (GREF G1 :E1E3))
                          (*
                           (+ (* (GREF G1 :E2E3) (GREF G3 :E1))
                              (* -1 (GREF G3 :E3) (GREF G1 :E1E2)))
                           (GREF G2 :E1E2))
                          (*
                           (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                              (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                              (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                           (GREF G3 :E2)))
                         0 0
                         (+
                          (* -1 (GREF G3 :E2) (GREF G2 :E2E3) (GREF G1 :E1E2))
                          (*
                           (+ (* (GREF G3 :E3) (GREF G1 :E2E3))
                              (* -1 (GREF G3 :E2) (GREF G1 :S)))
                           (GREF G2 :E1E3))
                          (* -1 (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E1E3))
                          (*
                           (+ (* (GREF G1 :E2E3) (GREF G3 :E2))
                              (* (GREF G3 :E3) (GREF G1 :S)))
                           (GREF G2 :E1E2))
                          (*
                           (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                              (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                              (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                           (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 BVE3) (G3 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :S)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3) (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E3) (GREF G3 :E1E3) (GREF G2 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2)))
                  (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E2E3) (GREF G3 :E2E3) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 BVE3) (G3 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (*
                          (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                             (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                             (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                          (GREF G3 :E1E2E3))
                         (*
                          (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                             (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                             (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                          (GREF G3 :E1E2E3))
                         0
                         (*
                          (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                             (* (GREF G1 :E1E3) (GREF G2 :E2E3))
                             (* -1 (GREF G1 :E2E3) (GREF G2 :E1E3)))
                          (GREF G3 :E1E2E3))
                         0 0
                         (*
                          (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                             (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                             (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                          (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 BVE3) (G3 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :S) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G1 :E2E3) (GREF G3 :E2E3))
                         (* (GREF G3 :S) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E2E3))
                         (* (GREF G3 :E1E2) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :S)))
                  (+ (* -1 (GREF G3 :E1E3) (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* (GREF G3 :S) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :E2E3))
                         (* (GREF G3 :S) (GREF G1 :S)))
                      (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G1 :E2E3) (GREF G3 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                      (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 IE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1))
                       (* (GREF G1 :E1E3) (GREF G3 :E2))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E3)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :S))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E2))
                       (* (GREF G1 :E1E2) (GREF G3 :E1E3)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E2E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2))
                       (* (GREF G1 :E1E3) (GREF G3 :S))
                       (* (GREF G1 :E1E2) (GREF G3 :E2E3)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2E3)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E3))
                       (* (GREF G1 :E1E3) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :S)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E2E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E1)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2E3))
                       (* (GREF G1 :E1E3) (GREF G3 :E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E2)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E2E3))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1E3))
                       (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 IE3) (G3 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3) (GREF G3 :S))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2E3) (GREF G3 :S)) 0
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :S))
                         0 0 (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 IE3) (G3 VE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1))
                       (* (GREF G1 :E1E3) (GREF G3 :E2)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E2))
                       (* -1 (GREF G1 :E1E3) (GREF G3 :E1)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E3)))
                  (+
                   (*
                    (+ (* (GREF G1 :E1E3) (GREF G3 :E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E2)))
                    (GREF G2 :E1E2E3))
                   (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1)))
                  (+
                   (*
                    (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E3))
                       (* (GREF G1 :E1E2) (GREF G3 :E1)))
                    (GREF G2 :E1E2E3))
                   (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E2)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 IE3) (G3 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (*
                           (+ (* -1 (GREF G1 :E1E3) (GREF G3 :E1E2))
                              (* (GREF G1 :E1E2) (GREF G3 :E1E3)))
                           (GREF G2 :E1E2E3))
                          (* -1 (GREF G1 :S) (GREF G2 :E1E2E3)
                             (GREF G3 :E2E3)))
                         (+
                          (*
                           (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2))
                              (* (GREF G1 :E1E2) (GREF G3 :E2E3)))
                           (GREF G2 :E1E2E3))
                          (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E3)))
                         0
                         (+
                          (*
                           (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E3))
                              (* (GREF G1 :E1E3) (GREF G3 :E2E3)))
                           (GREF G2 :E1E2E3))
                          (* -1 (GREF G1 :S) (GREF G2 :E1E2E3)
                             (GREF G3 :E1E2)))
                         0 0
                         (+
                          (*
                           (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E2E3))
                              (* -1 (GREF G1 :E1E3) (GREF G3 :E1E3)))
                           (GREF G2 :E1E2E3))
                          (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3)
                             (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 IE3) (G3 IE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))
                  (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2E3) (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 IE3) (G3 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (*
                           (+ (* -1 (GREF G1 :E2E3) (GREF G3 :S))
                              (* -1 (GREF G1 :E1E3) (GREF G3 :E1E2))
                              (* (GREF G1 :E1E2) (GREF G3 :E1E3)))
                           (GREF G2 :E1E2E3))
                          (* -1 (GREF G1 :S) (GREF G2 :E1E2E3)
                             (GREF G3 :E2E3)))
                         (+
                          (*
                           (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E2))
                              (* (GREF G1 :E1E3) (GREF G3 :S))
                              (* (GREF G1 :E1E2) (GREF G3 :E2E3)))
                           (GREF G2 :E1E2E3))
                          (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :E1E3)))
                         0
                         (+
                          (*
                           (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E1E3))
                              (* (GREF G1 :E1E3) (GREF G3 :E2E3))
                              (* -1 (GREF G1 :E1E2) (GREF G3 :S)))
                           (GREF G2 :E1E2E3))
                          (* -1 (GREF G1 :S) (GREF G2 :E1E2E3)
                             (GREF G3 :E1E2)))
                         0 0
                         (+
                          (*
                           (+ (* -1 (GREF G1 :E2E3) (GREF G3 :E2E3))
                              (* -1 (GREF G1 :E1E3) (GREF G3 :E1E3))
                              (* -1 (GREF G1 :E1E2) (GREF G3 :E1E2)))
                           (GREF G2 :E1E2E3))
                          (* (GREF G1 :S) (GREF G2 :E1E2E3) (GREF G3 :S)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 RE3) (G3 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E2E3)))
                  (+ (* (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :S))
                         (* -1 (GREF G3 :E1) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G2 :E2E3))
                         (* (GREF G3 :E2) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G1 :S))
                         (* (GREF G3 :E2) (GREF G1 :E1E2))
                         (* (GREF G3 :E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E2E3)))
                  (+ (* (GREF G3 :E1E2E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1) (GREF G1 :S))
                         (* -1 (GREF G3 :E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2) (GREF G1 :S))
                         (* -1 (GREF G3 :E1) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E3)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :S) (GREF G2 :E1E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* (GREF G3 :S) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E3)))
                  (+ (* -1 (GREF G3 :E1) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E1) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E2)))
                  (+ (* (GREF G3 :S) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E2))
                         (* (GREF G3 :S) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E2)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :S)))
                  (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E3) (GREF G2 :E1E3))
                         (* (GREF G3 :E2) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2E3) (GREF G1 :S))
                         (* (GREF G3 :E3) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E2) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 RE3) (G3 SE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                      (* (GREF G1 :E1E2) (GREF G2 :S))
                      (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                      (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                      (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                      (* (GREF G1 :E2E3) (GREF G2 :S)))
                   (GREF G3 :S))
                  (*
                   (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                      (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                      (* (GREF G1 :E1E3) (GREF G2 :S))
                      (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                   (GREF G3 :S))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 RE3) (G3 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+
                          (*
                           (+ (* -1 (GREF G3 :E1) (GREF G2 :E1E3))
                              (* -1 (GREF G3 :E2) (GREF G2 :E2E3)))
                           (GREF G1 :E1E3))
                          (*
                           (+ (* (GREF G3 :E1) (GREF G1 :S))
                              (* (GREF G3 :E2) (GREF G1 :E1E2)))
                           (GREF G2 :S))
                          (*
                           (+ (* (GREF G3 :E2) (GREF G2 :E1E3))
                              (* -1 (GREF G3 :E1) (GREF G2 :E2E3)))
                           (GREF G1 :E2E3))
                          (*
                           (+ (* (GREF G3 :E2) (GREF G1 :S))
                              (* -1 (GREF G3 :E1) (GREF G1 :E1E2)))
                           (GREF G2 :E1E2))
                          (*
                           (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                              (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                              (* (GREF G1 :E1E3) (GREF G2 :S))
                              (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                           (GREF G3 :E3)))
                         (+
                          (*
                           (+ (* (GREF G3 :E1) (GREF G2 :E2E3))
                              (* -1 (GREF G3 :E2) (GREF G2 :E1E3)))
                           (GREF G1 :E1E3))
                          (*
                           (+ (* -1 (GREF G3 :E1) (GREF G1 :S))
                              (* -1 (GREF G3 :E2) (GREF G1 :E1E2)))
                           (GREF G2 :E1E2))
                          (*
                           (+ (* -1 (GREF G3 :E2) (GREF G2 :E2E3))
                              (* -1 (GREF G3 :E1) (GREF G2 :E1E3)))
                           (GREF G1 :E2E3))
                          (*
                           (+ (* (GREF G3 :E2) (GREF G1 :S))
                              (* -1 (GREF G3 :E1) (GREF G1 :E1E2)))
                           (GREF G2 :S))
                          (*
                           (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                              (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                              (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                              (* (GREF G1 :E2E3) (GREF G2 :S)))
                           (GREF G3 :E3)))
                         0
                         (+
                          (* -1 (GREF G3 :E1) (GREF G2 :E2E3) (GREF G1 :E1E2))
                          (* -1 (GREF G3 :E1) (GREF G1 :S) (GREF G2 :E1E3))
                          (* -1 (GREF G3 :E3) (GREF G2 :E1E3) (GREF G1 :E1E3))
                          (* -1 (GREF G3 :E3) (GREF G1 :E1E2) (GREF G2 :E1E2))
                          (*
                           (+ (* -1 (GREF G3 :E3) (GREF G2 :E2E3))
                              (* (GREF G3 :E1) (GREF G2 :E1E2)))
                           (GREF G1 :E2E3))
                          (*
                           (+ (* (GREF G3 :E3) (GREF G1 :S))
                              (* -1 (GREF G3 :E1) (GREF G1 :E1E3)))
                           (GREF G2 :S))
                          (*
                           (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                              (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                              (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                              (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                           (GREF G3 :E2)))
                         0 0
                         (+
                          (* -1 (GREF G3 :E2) (GREF G2 :E2E3) (GREF G1 :E1E2))
                          (* -1 (GREF G3 :E2) (GREF G1 :S) (GREF G2 :E1E3))
                          (* -1 (GREF G3 :E3) (GREF G2 :E2E3) (GREF G1 :E1E3))
                          (* (GREF G3 :E3) (GREF G1 :S) (GREF G2 :E1E2))
                          (*
                           (+ (* (GREF G3 :E3) (GREF G2 :E1E3))
                              (* (GREF G3 :E2) (GREF G2 :E1E2)))
                           (GREF G1 :E2E3))
                          (*
                           (+ (* (GREF G3 :E3) (GREF G1 :E1E2))
                              (* -1 (GREF G3 :E2) (GREF G1 :E1E3)))
                           (GREF G2 :S))
                          (*
                           (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                              (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                              (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                              (* (GREF G1 :E2E3) (GREF G2 :S)))
                           (GREF G3 :E1)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 RE3) (G3 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3) (GREF G1 :E1E3))
                     (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E3)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3))
                       (* (GREF G3 :E1E3) (GREF G2 :E2E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                       (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                       (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                       (* (GREF G1 :E1E3) (GREF G2 :S))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                    (GREF G3 :E1E2)))
                  (+
                   (*
                    (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                       (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                    (GREF G1 :E1E3))
                   (*
                    (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                       (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                    (GREF G2 :E1E2))
                   (*
                    (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                       (* (GREF G3 :E2E3) (GREF G2 :E1E3)))
                    (GREF G1 :E2E3))
                   (*
                    (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                       (* (GREF G3 :E2E3) (GREF G1 :E1E2)))
                    (GREF G2 :S))
                   (*
                    (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                       (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                       (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                       (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                    (GREF G3 :E1E2)))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 RE3) (G3 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (*
                          (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                             (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                             (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                             (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                          (GREF G3 :E1E2E3))
                         (*
                          (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                             (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                             (* (GREF G1 :E1E3) (GREF G2 :S))
                             (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                          (GREF G3 :E1E2E3))
                         0
                         (*
                          (+ (* -1 (GREF G1 :S) (GREF G2 :E1E2))
                             (* -1 (GREF G1 :E1E2) (GREF G2 :S))
                             (* (GREF G1 :E1E3) (GREF G2 :E2E3))
                             (* -1 (GREF G1 :E2E3) (GREF G2 :E1E3)))
                          (GREF G3 :E1E2E3))
                         0 0
                         (*
                          (+ (* (GREF G1 :S) (GREF G2 :S))
                             (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                             (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                             (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                          (GREF G3 :E1E2E3))))) 
(DEFMETHOD *G3 ((G1 RE3) (G2 RE3) (G3 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E1E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G1 :S))
                         (* -1 (GREF G3 :S) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G3 :E1E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E2E3)))
                  (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* -1 (GREF G3 :E2E3) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :S) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E2) (GREF G2 :E2E3))
                         (* (GREF G3 :S) (GREF G2 :E1E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E2) (GREF G1 :S))
                         (* (GREF G3 :S) (GREF G1 :E1E2))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E3)))
                  (+ (* (GREF G3 :E1E2) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :E1E2) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E2E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E2E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :E1E2) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2))
                         (* (GREF G3 :E1E2) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :S)))
                  (+ (* (GREF G3 :S) (GREF G2 :E2E3) (GREF G1 :E1E2))
                     (* (GREF G3 :S) (GREF G1 :S) (GREF G2 :E1E3))
                     (*
                      (+ (* -1 (GREF G3 :E2E3) (GREF G2 :E2E3))
                         (* -1 (GREF G3 :E1E3) (GREF G2 :E1E3)))
                      (GREF G1 :E1E3))
                     (*
                      (+ (* (GREF G3 :E2E3) (GREF G1 :S))
                         (* -1 (GREF G3 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (*
                      (+ (* -1 (GREF G3 :E1E3) (GREF G2 :E2E3))
                         (* (GREF G3 :E2E3) (GREF G2 :E1E3))
                         (* -1 (GREF G3 :S) (GREF G2 :E1E2)))
                      (GREF G1 :E2E3))
                     (*
                      (+ (* (GREF G3 :E1E3) (GREF G1 :S))
                         (* (GREF G3 :E2E3) (GREF G1 :E1E2))
                         (* (GREF G3 :S) (GREF G1 :E1E3)))
                      (GREF G2 :S))
                     (*
                      (+ (* -1 (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :E1E2) (GREF G2 :E1E3))
                         (* -1 (GREF G1 :E1E3) (GREF G2 :E1E2))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :S)))
                      (GREF G3 :E1E2)))))) 
(DEFMETHOD *I2 ((G1 E3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G2 :S))
                     (* (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G1 :E2) (GREF G2 :E2))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (* (GREF G1 :E3) (GREF G2 :E3))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E2))
                     (* (GREF G1 :E1) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E1E3) (GREF G2 :E1E2E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E2))
                     (* (GREF G1 :E3) (GREF G2 :E1E2E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E3))
                     (* (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G1 :E2) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E2E3))
                     (* (GREF G1 :E1) (GREF G2 :E1E2E3)))
                  (* (GREF G1 :S) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *I2 ((G1 E3) (G2 SE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :S))))) 
(DEFMETHOD *I2 ((G1 E3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G1 :E2) (GREF G2 :E2))
                     (* (GREF G1 :E3) (GREF G2 :E3)))
                  (* (GREF G1 :S) (GREF G2 :E1)) (* (GREF G1 :S) (GREF G2 :E2))
                  0 (* (GREF G1 :S) (GREF G2 :E3)) 0 0 0))) 
(DEFMETHOD *I2 ((G1 E3) (G2 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                  (+ (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2E3)))
                  (* (GREF G1 :S) (GREF G2 :E1E2))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G1 :E2) (GREF G2 :E2E3)))
                  (* (GREF G1 :S) (GREF G2 :E1E3))
                  (* (GREF G1 :S) (GREF G2 :E2E3)) 0))) 
(DEFMETHOD *I2 ((G1 E3) (G2 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* (GREF G1 :S) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *I2 ((G1 E3) (G2 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                  (+ (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2E3)))
                  (* (GREF G1 :S) (GREF G2 :E1E2))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G1 :E2) (GREF G2 :E2E3)))
                  (* (GREF G1 :S) (GREF G2 :E1E3))
                  (* (GREF G1 :S) (GREF G2 :E2E3)) 0))) 
(DEFMETHOD *I2 ((G1 SE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :E3))
                         (* (GREF G1 :S) (GREF G2 :E1E3))
                         (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :S) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *I2 ((G1 SE3) (G2 SE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :S))))) 
(DEFMETHOD *I2 ((G1 SE3) (G2 VE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :S) (GREF G2 :E3))))) 
(DEFMETHOD *I2 ((G1 SE3) (G2 BVE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :S) (GREF G2 :E1E3))))) 
(DEFMETHOD *I2 ((G1 SE3) (G2 IE3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *I2 ((G1 SE3) (G2 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :S))
                         (* (GREF G1 :S) (GREF G2 :E1E2))
                         (* (GREF G1 :S) (GREF G2 :E2E3))
                         (* (GREF G1 :S) (GREF G2 :E1E3))))) 
(DEFMETHOD *I2 ((G1 VE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G1 :E2) (GREF G2 :E2))
                     (* (GREF G1 :E3) (GREF G2 :E3)))
                  (+ (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2E3)))
                  (* (GREF G1 :E3) (GREF G2 :E1E2E3))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G1 :E2) (GREF G2 :E2E3)))
                  (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3))
                  (* (GREF G1 :E1) (GREF G2 :E1E2E3)) 0))) 
(DEFMETHOD *I2 ((G1 VE3) (G2 SE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *I2 ((G1 VE3) (G2 VE3))
  (MAKE-INSTANCE 'SE3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G2 :E1))
                     (* (GREF G1 :E2) (GREF G2 :E2))
                     (* (GREF G1 :E3) (GREF G2 :E3)))))) 
(DEFMETHOD *I2 ((G1 VE3) (G2 BVE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G1 :E2) (GREF G2 :E2E3)))))) 
(DEFMETHOD *I2 ((G1 VE3) (G2 IE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (GREF G1 :E3) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E2) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *I2 ((G1 VE3) (G2 RE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G1 :E2) (GREF G2 :E2E3)))))) 
(DEFMETHOD *I2 ((G1 BVE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                  (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3))
                  (* (GREF G1 :E1E3) (GREF G2 :E1E2E3)) 0
                  (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3)) 0 0 0))) 
(DEFMETHOD *I2 ((G1 BVE3) (G2 SE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *I2 ((G1 BVE3) (G2 VE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *I2 ((G1 BVE3) (G2 BVE3))
  (MAKE-INSTANCE 'SE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))))) 
(DEFMETHOD *I2 ((G1 BVE3) (G2 IE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2E3))
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *I2 ((G1 BVE3) (G2 RE3))
  (MAKE-INSTANCE 'SE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))))) 
(DEFMETHOD *I2 ((G1 IE3) (G2 E3))
  (MAKE-INSTANCE 'SE3 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *I2 ((G1 IE3) (G2 SE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *I2 ((G1 IE3) (G2 VE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *I2 ((G1 IE3) (G2 BVE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *I2 ((G1 IE3) (G2 IE3))
  (MAKE-INSTANCE 'SE3 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *I2 ((G1 IE3) (G2 RE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *I2 ((G1 RE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E1))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3)))
                  (+ (* (GREF G1 :S) (GREF G2 :E2))
                     (* (GREF G1 :E1E3) (GREF G2 :E1E2E3)))
                  (* (GREF G1 :S) (GREF G2 :E1E2))
                  (+ (* (GREF G1 :S) (GREF G2 :E3))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3)))
                  (* (GREF G1 :S) (GREF G2 :E1E3))
                  (* (GREF G1 :S) (GREF G2 :E2E3))
                  (* (GREF G1 :S) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *I2 ((G1 RE3) (G2 SE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (* (GREF G1 :S) (GREF G2 :S))))) 
(DEFMETHOD *I2 ((G1 RE3) (G2 VE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* (GREF G1 :S) (GREF G2 :E1))
                         (* (GREF G1 :S) (GREF G2 :E2))
                         (* (GREF G1 :S) (GREF G2 :E3))))) 
(DEFMETHOD *I2 ((G1 RE3) (G2 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                  (* (GREF G1 :S) (GREF G2 :E1E2))
                  (* (GREF G1 :S) (GREF G2 :E2E3))
                  (* (GREF G1 :S) (GREF G2 :E1E3))))) 
(DEFMETHOD *I2 ((G1 RE3) (G2 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2E3))
                         (* (GREF G1 :E1E3) (GREF G2 :E1E2E3)) 0
                         (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2E3)) 0 0
                         (* (GREF G1 :S) (GREF G2 :E1E2E3))))) 
(DEFMETHOD *I2 ((G1 RE3) (G2 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :S) (GREF G2 :S))
                     (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))
                  (* (GREF G1 :S) (GREF G2 :E1E2))
                  (* (GREF G1 :S) (GREF G2 :E2E3))
                  (* (GREF G1 :S) (GREF G2 :E1E3))))) 
(DEFMETHOD *C2 ((G1 E3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                            (* (GREF G1 :E1E2) (GREF G2 :E2))
                            (* -1 (GREF G1 :E3) (GREF G2 :E1E3))
                            (* (GREF G1 :E1E3) (GREF G2 :E3)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                            (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                            (* -1 (GREF G1 :E3) (GREF G2 :E2E3))
                            (* (GREF G1 :E2E3) (GREF G2 :E3)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E2))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1))
                            (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                            (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                            (* (GREF G1 :E2) (GREF G2 :E2E3))
                            (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                            (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E3))
                            (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                            (* -1 (GREF G1 :E3) (GREF G2 :E1))
                            (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                         (+ (* (GREF G1 :E2) (GREF G2 :E3))
                            (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                            (* -1 (GREF G1 :E3) (GREF G2 :E2))
                            (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                         0))) 
(DEFMETHOD *C2 ((G1 E3) (G2 SE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 E3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* (GREF G1 :E1E2) (GREF G2 :E2))
                            (* (GREF G1 :E1E3) (GREF G2 :E3)))
                         (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                            (* (GREF G1 :E2E3) (GREF G2 :E3)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E2))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                         (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                            (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E3))
                            (* -1 (GREF G1 :E3) (GREF G2 :E1)))
                         (+ (* (GREF G1 :E2) (GREF G2 :E3))
                            (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                         0))) 
(DEFMETHOD *C2 ((G1 E3) (G2 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                            (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                            (* -1 (GREF G1 :E3) (GREF G2 :E2E3)))
                         (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                            (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                            (* (GREF G1 :E2) (GREF G2 :E2E3)))
                         (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                            (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                         (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                            (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                         0))) 
(DEFMETHOD *C2 ((G1 E3) (G2 IE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 E3) (G2 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                            (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                            (* -1 (GREF G1 :E3) (GREF G2 :E2E3)))
                         (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                            (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                            (* (GREF G1 :E2) (GREF G2 :E2E3)))
                         (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                            (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                         (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                            (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                         0))) 
(DEFMETHOD *C2 ((G1 SE3) (G2 E3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 SE3) (G2 SE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 SE3) (G2 VE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 SE3) (G2 BVE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 SE3) (G2 IE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 SE3) (G2 RE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 VE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                            (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                            (* -1 (GREF G1 :E3) (GREF G2 :E2E3)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E2))
                            (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                            (* (GREF G1 :E2) (GREF G2 :E2E3)))
                         (+ (* (GREF G1 :E1) (GREF G2 :E3))
                            (* -1 (GREF G1 :E3) (GREF G2 :E1)))
                         (+ (* (GREF G1 :E2) (GREF G2 :E3))
                            (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                         0))) 
(DEFMETHOD *C2 ((G1 VE3) (G2 SE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 VE3) (G2 VE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1) (GREF G2 :E2))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1)))
                  (+ (* (GREF G1 :E2) (GREF G2 :E3))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E3))
                     (* -1 (GREF G1 :E3) (GREF G2 :E1)))))) 
(DEFMETHOD *C2 ((G1 VE3) (G2 BVE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G1 :E2) (GREF G2 :E2E3)))))) 
(DEFMETHOD *C2 ((G1 VE3) (G2 IE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 VE3) (G2 RE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E2) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E1E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2E3)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E1E3))
                     (* (GREF G1 :E2) (GREF G2 :E2E3)))))) 
(DEFMETHOD *C2 ((G1 BVE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* (GREF G1 :E1E2) (GREF G2 :E2))
                            (* (GREF G1 :E1E3) (GREF G2 :E3)))
                         (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                            (* (GREF G1 :E2E3) (GREF G2 :E3)))
                         (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                            (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                         (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                            (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                         (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                            (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                         (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                            (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                         0))) 
(DEFMETHOD *C2 ((G1 BVE3) (G2 SE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 BVE3) (G2 VE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1E2) (GREF G2 :E2))
                     (* (GREF G1 :E1E3) (GREF G2 :E3)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                     (* (GREF G1 :E2E3) (GREF G2 :E3)))
                  (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))))) 
(DEFMETHOD *C2 ((G1 BVE3) (G2 BVE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))))) 
(DEFMETHOD *C2 ((G1 BVE3) (G2 IE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 BVE3) (G2 RE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))))) 
(DEFMETHOD *C2 ((G1 IE3) (G2 E3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 IE3) (G2 SE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 IE3) (G2 VE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 IE3) (G2 BVE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 IE3) (G2 IE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 IE3) (G2 RE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 RE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0
                         (+ (* (GREF G1 :E1E2) (GREF G2 :E2))
                            (* (GREF G1 :E1E3) (GREF G2 :E3)))
                         (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                            (* (GREF G1 :E2E3) (GREF G2 :E3)))
                         (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                            (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                         (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                            (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))
                         (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                            (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                         (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                            (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                         0))) 
(DEFMETHOD *C2 ((G1 RE3) (G2 SE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 RE3) (G2 VE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E1E2) (GREF G2 :E2))
                     (* (GREF G1 :E1E3) (GREF G2 :E3)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1))
                     (* (GREF G1 :E2E3) (GREF G2 :E3)))
                  (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E1))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E2)))))) 
(DEFMETHOD *C2 ((G1 RE3) (G2 BVE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))))) 
(DEFMETHOD *C2 ((G1 RE3) (G2 IE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 0))) 
(DEFMETHOD *C2 ((G1 RE3) (G2 RE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR
                  (+ (* -1 (GREF G1 :E1E3) (GREF G2 :E2E3))
                     (* (GREF G1 :E2E3) (GREF G2 :E1E3)))
                  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E3))
                     (* (GREF G1 :E1E3) (GREF G2 :E1E2)))
                  (+ (* (GREF G1 :E1E2) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E2E3) (GREF G2 :E1E2)))))) 
(DEFMETHOD *S2 ((G1 E3) (G2 E3))
  (+ (* (GREF G1 :S) (GREF G2 :S)) (* (GREF G1 :E1) (GREF G2 :E1))
     (* (GREF G1 :E2) (GREF G2 :E2)) (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
     (* (GREF G1 :E3) (GREF G2 :E3)) (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3))
     (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3)))) 
(DEFMETHOD *S2 ((G1 E3) (G2 SE3)) (* (GREF G1 :S) (GREF G2 :S))) 
(DEFMETHOD *S2 ((G1 E3) (G2 VE3))
  (+ (* (GREF G1 :E1) (GREF G2 :E1)) (* (GREF G1 :E2) (GREF G2 :E2))
     (* (GREF G1 :E3) (GREF G2 :E3)))) 
(DEFMETHOD *S2 ((G1 E3) (G2 BVE3))
  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))) 
(DEFMETHOD *S2 ((G1 E3) (G2 IE3)) (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3))) 
(DEFMETHOD *S2 ((G1 E3) (G2 RE3))
  (+ (* (GREF G1 :S) (GREF G2 :S)) (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))) 
(DEFMETHOD *S2 ((G1 SE3) (G2 E3)) (* (GREF G1 :S) (GREF G2 :S))) 
(DEFMETHOD *S2 ((G1 SE3) (G2 SE3)) (* (GREF G1 :S) (GREF G2 :S))) 
(DEFMETHOD *S2 ((G1 SE3) (G2 VE3)) 0) 
(DEFMETHOD *S2 ((G1 SE3) (G2 BVE3)) 0) 
(DEFMETHOD *S2 ((G1 SE3) (G2 IE3)) 0) 
(DEFMETHOD *S2 ((G1 SE3) (G2 RE3)) (* (GREF G1 :S) (GREF G2 :S))) 
(DEFMETHOD *S2 ((G1 VE3) (G2 E3))
  (+ (* (GREF G1 :E1) (GREF G2 :E1)) (* (GREF G1 :E2) (GREF G2 :E2))
     (* (GREF G1 :E3) (GREF G2 :E3)))) 
(DEFMETHOD *S2 ((G1 VE3) (G2 SE3)) 0) 
(DEFMETHOD *S2 ((G1 VE3) (G2 VE3))
  (+ (* (GREF G1 :E1) (GREF G2 :E1)) (* (GREF G1 :E2) (GREF G2 :E2))
     (* (GREF G1 :E3) (GREF G2 :E3)))) 
(DEFMETHOD *S2 ((G1 VE3) (G2 BVE3)) 0) 
(DEFMETHOD *S2 ((G1 VE3) (G2 IE3)) 0) 
(DEFMETHOD *S2 ((G1 VE3) (G2 RE3)) 0) 
(DEFMETHOD *S2 ((G1 BVE3) (G2 E3))
  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))) 
(DEFMETHOD *S2 ((G1 BVE3) (G2 SE3)) 0) 
(DEFMETHOD *S2 ((G1 BVE3) (G2 VE3)) 0) 
(DEFMETHOD *S2 ((G1 BVE3) (G2 BVE3))
  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))) 
(DEFMETHOD *S2 ((G1 BVE3) (G2 IE3)) 0) 
(DEFMETHOD *S2 ((G1 BVE3) (G2 RE3))
  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))) 
(DEFMETHOD *S2 ((G1 IE3) (G2 E3)) (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3))) 
(DEFMETHOD *S2 ((G1 IE3) (G2 SE3)) 0) 
(DEFMETHOD *S2 ((G1 IE3) (G2 VE3)) 0) 
(DEFMETHOD *S2 ((G1 IE3) (G2 BVE3)) 0) 
(DEFMETHOD *S2 ((G1 IE3) (G2 IE3)) (* -1 (GREF G1 :E1E2E3) (GREF G2 :E1E2E3))) 
(DEFMETHOD *S2 ((G1 IE3) (G2 RE3)) 0) 
(DEFMETHOD *S2 ((G1 RE3) (G2 E3))
  (+ (* (GREF G1 :S) (GREF G2 :S)) (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))) 
(DEFMETHOD *S2 ((G1 RE3) (G2 SE3)) (* (GREF G1 :S) (GREF G2 :S))) 
(DEFMETHOD *S2 ((G1 RE3) (G2 VE3)) 0) 
(DEFMETHOD *S2 ((G1 RE3) (G2 BVE3))
  (+ (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))) 
(DEFMETHOD *S2 ((G1 RE3) (G2 IE3)) 0) 
(DEFMETHOD *S2 ((G1 RE3) (G2 RE3))
  (+ (* (GREF G1 :S) (GREF G2 :S)) (* -1 (GREF G1 :E1E2) (GREF G2 :E1E2))
     (* -1 (GREF G1 :E1E3) (GREF G2 :E1E3))
     (* -1 (GREF G1 :E2E3) (GREF G2 :E2E3)))) 
(DEFMETHOD REVG ((G1 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G1 :S) (GREF G1 :E1) (GREF G1 :E2)
                         (* -1 (GREF G1 :E1E2)) (GREF G1 :E3)
                         (* -1 (GREF G1 :E1E3)) (* -1 (GREF G1 :E2E3))
                         (* -1 (GREF G1 :E1E2E3))))) 
(DEFMETHOD REVG ((G1 SE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR (GREF G1 :S)))) 
(DEFMETHOD REVG ((G1 VE3))
  (MAKE-INSTANCE 'VE3 :COEF (VECTOR (GREF G1 :E1) (GREF G1 :E2) (GREF G1 :E3)))) 
(DEFMETHOD REVG ((G1 BVE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2)) (* -1 (GREF G1 :E2E3))
                         (* -1 (GREF G1 :E1E3))))) 
(DEFMETHOD REVG ((G1 IE3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (* -1 (GREF G1 :E1E2E3))))) 
(DEFMETHOD REVG ((G1 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (GREF G1 :S) (* -1 (GREF G1 :E1E2))
                         (* -1 (GREF G1 :E2E3)) (* -1 (GREF G1 :E1E3))))) 
(DEFMETHOD INVV ((G1 SE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (EXPT (GREF G1 :S) -1)))) 
(DEFMETHOD INVV ((G1 VE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR
                  (* (GREF G1 :E1)
                     (EXPT
                      (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)
                         (EXPT (GREF G1 :E3) 2))
                      -1))
                  (* (GREF G1 :E2)
                     (EXPT
                      (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)
                         (EXPT (GREF G1 :E3) 2))
                      -1))
                  (* (GREF G1 :E3)
                     (EXPT
                      (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)
                         (EXPT (GREF G1 :E3) 2))
                      -1))))) 
(DEFMETHOD INVV ((G1 BVE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR
                  (* -1 (GREF G1 :E1E2)
                     (EXPT
                      (+ (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E1E3) 2)
                         (EXPT (GREF G1 :E2E3) 2))
                      -1))
                  (* -1 (GREF G1 :E2E3)
                     (EXPT
                      (+ (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E1E3) 2)
                         (EXPT (GREF G1 :E2E3) 2))
                      -1))
                  (* -1 (GREF G1 :E1E3)
                     (EXPT
                      (+ (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E1E3) 2)
                         (EXPT (GREF G1 :E2E3) 2))
                      -1))))) 
(DEFMETHOD INVV ((G1 IE3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (* -1 (EXPT (GREF G1 :E1E2E3) -1))))) 
(DEFMETHOD INVV ((G1 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (* (GREF G1 :S)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2)
                         (EXPT (GREF G1 :E1E3) 2) (EXPT (GREF G1 :E2E3) 2))
                      -1))
                  (* -1 (GREF G1 :E1E2)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2)
                         (EXPT (GREF G1 :E1E3) 2) (EXPT (GREF G1 :E2E3) 2))
                      -1))
                  (* -1 (GREF G1 :E2E3)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2)
                         (EXPT (GREF G1 :E1E3) 2) (EXPT (GREF G1 :E2E3) 2))
                      -1))
                  (* -1 (GREF G1 :E1E3)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2)
                         (EXPT (GREF G1 :E1E3) 2) (EXPT (GREF G1 :E2E3) 2))
                      -1))))) 
(DEFMETHOD REFLECTLINE ((G1 E3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G1 :S)
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                                (EXPT (GREF G2 :E3) 2))
                             -1)
                            (+ (* -1 (GREF G1 :E1) (EXPT (GREF G2 :E1) 2))
                               (* -2 (GREF G1 :E2) (GREF G2 :E1) (GREF G2 :E2))
                               (* (GREF G1 :E1) (EXPT (GREF G2 :E2) 2))
                               (* -2 (GREF G1 :E3) (GREF G2 :E1) (GREF G2 :E3))
                               (* (GREF G1 :E1) (EXPT (GREF G2 :E3) 2))))
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                                (EXPT (GREF G2 :E3) 2))
                             -1)
                            (+ (* (GREF G1 :E2) (EXPT (GREF G2 :E1) 2))
                               (* -2 (GREF G1 :E1) (GREF G2 :E1) (GREF G2 :E2))
                               (* -1 (GREF G1 :E2) (EXPT (GREF G2 :E2) 2))
                               (* -2 (GREF G1 :E3) (GREF G2 :E2) (GREF G2 :E3))
                               (* (GREF G1 :E2) (EXPT (GREF G2 :E3) 2))))
                         (*
                          (EXPT
                           (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                              (EXPT (GREF G2 :E3) 2))
                           -1)
                          (+ (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E1) 2))
                             (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E2) 2))
                             (*
                              (+ (* 2 (GREF G1 :E2E3) (GREF G2 :E1))
                                 (* -2 (GREF G1 :E1E3) (GREF G2 :E2)))
                              (GREF G2 :E3))
                             (* (GREF G1 :E1E2) (EXPT (GREF G2 :E3) 2))))
                         (*
                          (EXPT
                           (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                              (EXPT (GREF G2 :E3) 2))
                           -1)
                          (+ (* -1 (GREF G1 :E3) (EXPT (GREF G2 :E1) 2))
                             (* -1 (GREF G1 :E3) (EXPT (GREF G2 :E2) 2))
                             (*
                              (+ (* 2 (GREF G1 :E1) (GREF G2 :E1))
                                 (* 2 (GREF G1 :E2) (GREF G2 :E2)))
                              (GREF G2 :E3))
                             (* (GREF G1 :E3) (EXPT (GREF G2 :E3) 2))))
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                                (EXPT (GREF G2 :E3) 2))
                             -1)
                            (+ (* (GREF G1 :E1E3) (EXPT (GREF G2 :E1) 2))
                               (* 2 (GREF G1 :E2E3) (GREF G2 :E1)
                                  (GREF G2 :E2))
                               (* -1 (GREF G1 :E1E3) (EXPT (GREF G2 :E2) 2))
                               (* 2 (GREF G1 :E1E2) (GREF G2 :E2)
                                  (GREF G2 :E3))
                               (* (GREF G1 :E1E3) (EXPT (GREF G2 :E3) 2))))
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                                (EXPT (GREF G2 :E3) 2))
                             -1)
                            (+ (* -1 (GREF G1 :E2E3) (EXPT (GREF G2 :E1) 2))
                               (* 2 (GREF G1 :E1E3) (GREF G2 :E1)
                                  (GREF G2 :E2))
                               (* (GREF G1 :E2E3) (EXPT (GREF G2 :E2) 2))
                               (* -2 (GREF G1 :E1E2) (GREF G2 :E1)
                                  (GREF G2 :E3))
                               (* (GREF G1 :E2E3) (EXPT (GREF G2 :E3) 2))))
                         (GREF G1 :E1E2E3)))) 
(DEFMETHOD REFLECTLINE ((G1 SE3) (G2 VE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (GREF G1 :S)))) 
(DEFMETHOD REFLECTLINE ((G1 VE3) (G2 VE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR
                  (* -1
                     (EXPT
                      (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                         (EXPT (GREF G2 :E3) 2))
                      -1)
                     (+ (* -1 (GREF G1 :E1) (EXPT (GREF G2 :E1) 2))
                        (* -2 (GREF G1 :E2) (GREF G2 :E1) (GREF G2 :E2))
                        (* (GREF G1 :E1) (EXPT (GREF G2 :E2) 2))
                        (* -2 (GREF G1 :E3) (GREF G2 :E1) (GREF G2 :E3))
                        (* (GREF G1 :E1) (EXPT (GREF G2 :E3) 2))))
                  (* -1
                     (EXPT
                      (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                         (EXPT (GREF G2 :E3) 2))
                      -1)
                     (+ (* (GREF G1 :E2) (EXPT (GREF G2 :E1) 2))
                        (* -2 (GREF G1 :E1) (GREF G2 :E1) (GREF G2 :E2))
                        (* -1 (GREF G1 :E2) (EXPT (GREF G2 :E2) 2))
                        (* -2 (GREF G1 :E3) (GREF G2 :E2) (GREF G2 :E3))
                        (* (GREF G1 :E2) (EXPT (GREF G2 :E3) 2))))
                  (*
                   (EXPT
                    (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                       (EXPT (GREF G2 :E3) 2))
                    -1)
                   (+ (* -1 (GREF G1 :E3) (EXPT (GREF G2 :E1) 2))
                      (* -1 (GREF G1 :E3) (EXPT (GREF G2 :E2) 2))
                      (*
                       (+ (* 2 (GREF G1 :E1) (GREF G2 :E1))
                          (* 2 (GREF G1 :E2) (GREF G2 :E2)))
                       (GREF G2 :E3))
                      (* (GREF G1 :E3) (EXPT (GREF G2 :E3) 2))))))) 
(DEFMETHOD REFLECTLINE ((G1 BVE3) (G2 VE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR
                  (*
                   (EXPT
                    (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                       (EXPT (GREF G2 :E3) 2))
                    -1)
                   (+ (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E1) 2))
                      (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E2) 2))
                      (*
                       (+ (* 2 (GREF G1 :E2E3) (GREF G2 :E1))
                          (* -2 (GREF G1 :E1E3) (GREF G2 :E2)))
                       (GREF G2 :E3))
                      (* (GREF G1 :E1E2) (EXPT (GREF G2 :E3) 2))))
                  (* -1
                     (EXPT
                      (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                         (EXPT (GREF G2 :E3) 2))
                      -1)
                     (+ (* -1 (GREF G1 :E2E3) (EXPT (GREF G2 :E1) 2))
                        (* 2 (GREF G1 :E1E3) (GREF G2 :E1) (GREF G2 :E2))
                        (* (GREF G1 :E2E3) (EXPT (GREF G2 :E2) 2))
                        (* -2 (GREF G1 :E1E2) (GREF G2 :E1) (GREF G2 :E3))
                        (* (GREF G1 :E2E3) (EXPT (GREF G2 :E3) 2))))
                  (* -1
                     (EXPT
                      (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                         (EXPT (GREF G2 :E3) 2))
                      -1)
                     (+ (* (GREF G1 :E1E3) (EXPT (GREF G2 :E1) 2))
                        (* 2 (GREF G1 :E2E3) (GREF G2 :E1) (GREF G2 :E2))
                        (* -1 (GREF G1 :E1E3) (EXPT (GREF G2 :E2) 2))
                        (* 2 (GREF G1 :E1E2) (GREF G2 :E2) (GREF G2 :E3))
                        (* (GREF G1 :E1E3) (EXPT (GREF G2 :E3) 2))))))) 
(DEFMETHOD REFLECTLINE ((G1 IE3) (G2 VE3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (GREF G1 :E1E2E3)))) 
(DEFMETHOD REFLECTLINE ((G1 RE3) (G2 VE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (GREF G1 :S)
                         (*
                          (EXPT
                           (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                              (EXPT (GREF G2 :E3) 2))
                           -1)
                          (+ (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E1) 2))
                             (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E2) 2))
                             (*
                              (+ (* 2 (GREF G1 :E2E3) (GREF G2 :E1))
                                 (* -2 (GREF G1 :E1E3) (GREF G2 :E2)))
                              (GREF G2 :E3))
                             (* (GREF G1 :E1E2) (EXPT (GREF G2 :E3) 2))))
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                                (EXPT (GREF G2 :E3) 2))
                             -1)
                            (+ (* -1 (GREF G1 :E2E3) (EXPT (GREF G2 :E1) 2))
                               (* 2 (GREF G1 :E1E3) (GREF G2 :E1)
                                  (GREF G2 :E2))
                               (* (GREF G1 :E2E3) (EXPT (GREF G2 :E2) 2))
                               (* -2 (GREF G1 :E1E2) (GREF G2 :E1)
                                  (GREF G2 :E3))
                               (* (GREF G1 :E2E3) (EXPT (GREF G2 :E3) 2))))
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                                (EXPT (GREF G2 :E3) 2))
                             -1)
                            (+ (* (GREF G1 :E1E3) (EXPT (GREF G2 :E1) 2))
                               (* 2 (GREF G1 :E2E3) (GREF G2 :E1)
                                  (GREF G2 :E2))
                               (* -1 (GREF G1 :E1E3) (EXPT (GREF G2 :E2) 2))
                               (* 2 (GREF G1 :E1E2) (GREF G2 :E2)
                                  (GREF G2 :E3))
                               (* (GREF G1 :E1E3) (EXPT (GREF G2 :E3) 2))))))) 
(DEFMETHOD REFLECTPLANE ((G1 E3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* -1 (GREF G1 :S))
                         (*
                          (EXPT
                           (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                              (EXPT (GREF G2 :E3) 2))
                           -1)
                          (+ (* -1 (GREF G1 :E1) (EXPT (GREF G2 :E1) 2))
                             (* -2 (GREF G1 :E2) (GREF G2 :E1) (GREF G2 :E2))
                             (* (GREF G1 :E1) (EXPT (GREF G2 :E2) 2))
                             (* -2 (GREF G1 :E3) (GREF G2 :E1) (GREF G2 :E3))
                             (* (GREF G1 :E1) (EXPT (GREF G2 :E3) 2))))
                         (*
                          (EXPT
                           (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                              (EXPT (GREF G2 :E3) 2))
                           -1)
                          (+ (* (GREF G1 :E2) (EXPT (GREF G2 :E1) 2))
                             (* -2 (GREF G1 :E1) (GREF G2 :E1) (GREF G2 :E2))
                             (* -1 (GREF G1 :E2) (EXPT (GREF G2 :E2) 2))
                             (* -2 (GREF G1 :E3) (GREF G2 :E2) (GREF G2 :E3))
                             (* (GREF G1 :E2) (EXPT (GREF G2 :E3) 2))))
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                                (EXPT (GREF G2 :E3) 2))
                             -1)
                            (+ (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E1) 2))
                               (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E2) 2))
                               (*
                                (+ (* 2 (GREF G1 :E2E3) (GREF G2 :E1))
                                   (* -2 (GREF G1 :E1E3) (GREF G2 :E2)))
                                (GREF G2 :E3))
                               (* (GREF G1 :E1E2) (EXPT (GREF G2 :E3) 2))))
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                                (EXPT (GREF G2 :E3) 2))
                             -1)
                            (+ (* -1 (GREF G1 :E3) (EXPT (GREF G2 :E1) 2))
                               (* -1 (GREF G1 :E3) (EXPT (GREF G2 :E2) 2))
                               (*
                                (+ (* 2 (GREF G1 :E1) (GREF G2 :E1))
                                   (* 2 (GREF G1 :E2) (GREF G2 :E2)))
                                (GREF G2 :E3))
                               (* (GREF G1 :E3) (EXPT (GREF G2 :E3) 2))))
                         (*
                          (EXPT
                           (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                              (EXPT (GREF G2 :E3) 2))
                           -1)
                          (+ (* (GREF G1 :E1E3) (EXPT (GREF G2 :E1) 2))
                             (* 2 (GREF G1 :E2E3) (GREF G2 :E1) (GREF G2 :E2))
                             (* -1 (GREF G1 :E1E3) (EXPT (GREF G2 :E2) 2))
                             (* 2 (GREF G1 :E1E2) (GREF G2 :E2) (GREF G2 :E3))
                             (* (GREF G1 :E1E3) (EXPT (GREF G2 :E3) 2))))
                         (*
                          (EXPT
                           (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                              (EXPT (GREF G2 :E3) 2))
                           -1)
                          (+ (* -1 (GREF G1 :E2E3) (EXPT (GREF G2 :E1) 2))
                             (* 2 (GREF G1 :E1E3) (GREF G2 :E1) (GREF G2 :E2))
                             (* (GREF G1 :E2E3) (EXPT (GREF G2 :E2) 2))
                             (* -2 (GREF G1 :E1E2) (GREF G2 :E1) (GREF G2 :E3))
                             (* (GREF G1 :E2E3) (EXPT (GREF G2 :E3) 2))))
                         (* -1 (GREF G1 :E1E2E3))))) 
(DEFMETHOD REFLECTPLANE ((G1 SE3) (G2 VE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (* -1 (GREF G1 :S))))) 
(DEFMETHOD REFLECTPLANE ((G1 VE3) (G2 VE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR
                  (*
                   (EXPT
                    (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                       (EXPT (GREF G2 :E3) 2))
                    -1)
                   (+ (* -1 (GREF G1 :E1) (EXPT (GREF G2 :E1) 2))
                      (* -2 (GREF G1 :E2) (GREF G2 :E1) (GREF G2 :E2))
                      (* (GREF G1 :E1) (EXPT (GREF G2 :E2) 2))
                      (* -2 (GREF G1 :E3) (GREF G2 :E1) (GREF G2 :E3))
                      (* (GREF G1 :E1) (EXPT (GREF G2 :E3) 2))))
                  (*
                   (EXPT
                    (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                       (EXPT (GREF G2 :E3) 2))
                    -1)
                   (+ (* (GREF G1 :E2) (EXPT (GREF G2 :E1) 2))
                      (* -2 (GREF G1 :E1) (GREF G2 :E1) (GREF G2 :E2))
                      (* -1 (GREF G1 :E2) (EXPT (GREF G2 :E2) 2))
                      (* -2 (GREF G1 :E3) (GREF G2 :E2) (GREF G2 :E3))
                      (* (GREF G1 :E2) (EXPT (GREF G2 :E3) 2))))
                  (* -1
                     (EXPT
                      (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                         (EXPT (GREF G2 :E3) 2))
                      -1)
                     (+ (* -1 (GREF G1 :E3) (EXPT (GREF G2 :E1) 2))
                        (* -1 (GREF G1 :E3) (EXPT (GREF G2 :E2) 2))
                        (*
                         (+ (* 2 (GREF G1 :E1) (GREF G2 :E1))
                            (* 2 (GREF G1 :E2) (GREF G2 :E2)))
                         (GREF G2 :E3))
                        (* (GREF G1 :E3) (EXPT (GREF G2 :E3) 2))))))) 
(DEFMETHOD REFLECTPLANE ((G1 BVE3) (G2 VE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR
                  (* -1
                     (EXPT
                      (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                         (EXPT (GREF G2 :E3) 2))
                      -1)
                     (+ (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E1) 2))
                        (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E2) 2))
                        (*
                         (+ (* 2 (GREF G1 :E2E3) (GREF G2 :E1))
                            (* -2 (GREF G1 :E1E3) (GREF G2 :E2)))
                         (GREF G2 :E3))
                        (* (GREF G1 :E1E2) (EXPT (GREF G2 :E3) 2))))
                  (*
                   (EXPT
                    (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                       (EXPT (GREF G2 :E3) 2))
                    -1)
                   (+ (* -1 (GREF G1 :E2E3) (EXPT (GREF G2 :E1) 2))
                      (* 2 (GREF G1 :E1E3) (GREF G2 :E1) (GREF G2 :E2))
                      (* (GREF G1 :E2E3) (EXPT (GREF G2 :E2) 2))
                      (* -2 (GREF G1 :E1E2) (GREF G2 :E1) (GREF G2 :E3))
                      (* (GREF G1 :E2E3) (EXPT (GREF G2 :E3) 2))))
                  (*
                   (EXPT
                    (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                       (EXPT (GREF G2 :E3) 2))
                    -1)
                   (+ (* (GREF G1 :E1E3) (EXPT (GREF G2 :E1) 2))
                      (* 2 (GREF G1 :E2E3) (GREF G2 :E1) (GREF G2 :E2))
                      (* -1 (GREF G1 :E1E3) (EXPT (GREF G2 :E2) 2))
                      (* 2 (GREF G1 :E1E2) (GREF G2 :E2) (GREF G2 :E3))
                      (* (GREF G1 :E1E3) (EXPT (GREF G2 :E3) 2))))))) 
(DEFMETHOD REFLECTPLANE ((G1 IE3) (G2 VE3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (* -1 (GREF G1 :E1E2E3))))) 
(DEFMETHOD REFLECTPLANE ((G1 RE3) (G2 VE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (* -1 (GREF G1 :S))
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                                (EXPT (GREF G2 :E3) 2))
                             -1)
                            (+ (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E1) 2))
                               (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E2) 2))
                               (*
                                (+ (* 2 (GREF G1 :E2E3) (GREF G2 :E1))
                                   (* -2 (GREF G1 :E1E3) (GREF G2 :E2)))
                                (GREF G2 :E3))
                               (* (GREF G1 :E1E2) (EXPT (GREF G2 :E3) 2))))
                         (*
                          (EXPT
                           (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                              (EXPT (GREF G2 :E3) 2))
                           -1)
                          (+ (* -1 (GREF G1 :E2E3) (EXPT (GREF G2 :E1) 2))
                             (* 2 (GREF G1 :E1E3) (GREF G2 :E1) (GREF G2 :E2))
                             (* (GREF G1 :E2E3) (EXPT (GREF G2 :E2) 2))
                             (* -2 (GREF G1 :E1E2) (GREF G2 :E1) (GREF G2 :E3))
                             (* (GREF G1 :E2E3) (EXPT (GREF G2 :E3) 2))))
                         (*
                          (EXPT
                           (+ (EXPT (GREF G2 :E1) 2) (EXPT (GREF G2 :E2) 2)
                              (EXPT (GREF G2 :E3) 2))
                           -1)
                          (+ (* (GREF G1 :E1E3) (EXPT (GREF G2 :E1) 2))
                             (* 2 (GREF G1 :E2E3) (GREF G2 :E1) (GREF G2 :E2))
                             (* -1 (GREF G1 :E1E3) (EXPT (GREF G2 :E2) 2))
                             (* 2 (GREF G1 :E1E2) (GREF G2 :E2) (GREF G2 :E3))
                             (* (GREF G1 :E1E3) (EXPT (GREF G2 :E3) 2))))))) 
(DEFMETHOD ROTATEG ((G1 E3) (G2 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G1 :S)
                         (*
                          (EXPT
                           (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2)
                              (EXPT (GREF G2 :E1E3) 2)
                              (EXPT (GREF G2 :E2E3) 2))
                           -1)
                          (+ (* (GREF G1 :E1) (EXPT (GREF G2 :S) 2))
                             (* 2 (GREF G1 :E2) (GREF G2 :S) (GREF G2 :E1E2))
                             (* -1 (GREF G1 :E1) (EXPT (GREF G2 :E1E2) 2))
                             (* 2 (GREF G1 :E3) (GREF G2 :S) (GREF G2 :E1E3))
                             (* -1 (GREF G1 :E1) (EXPT (GREF G2 :E1E3) 2))
                             (*
                              (+ (* 2 (GREF G1 :E3) (GREF G2 :E1E2))
                                 (* -2 (GREF G1 :E2) (GREF G2 :E1E3)))
                              (GREF G2 :E2E3))
                             (* (GREF G1 :E1) (EXPT (GREF G2 :E2E3) 2))))
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2)
                                (EXPT (GREF G2 :E1E3) 2)
                                (EXPT (GREF G2 :E2E3) 2))
                             -1)
                            (+ (* -1 (GREF G1 :E2) (EXPT (GREF G2 :S) 2))
                               (* 2 (GREF G1 :E1) (GREF G2 :S) (GREF G2 :E1E2))
                               (* (GREF G1 :E2) (EXPT (GREF G2 :E1E2) 2))
                               (* 2 (GREF G1 :E3) (GREF G2 :E1E2)
                                  (GREF G2 :E1E3))
                               (* -1 (GREF G1 :E2) (EXPT (GREF G2 :E1E3) 2))
                               (*
                                (+ (* -2 (GREF G1 :E3) (GREF G2 :S))
                                   (* 2 (GREF G1 :E1) (GREF G2 :E1E3)))
                                (GREF G2 :E2E3))
                               (* (GREF G1 :E2) (EXPT (GREF G2 :E2E3) 2))))
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2)
                                (EXPT (GREF G2 :E1E3) 2)
                                (EXPT (GREF G2 :E2E3) 2))
                             -1)
                            (+ (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :S) 2))
                               (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E1E2) 2))
                               (*
                                (+ (* 2 (GREF G1 :E2E3) (GREF G2 :S))
                                   (* -2 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                                (GREF G2 :E1E3))
                               (* (GREF G1 :E1E2) (EXPT (GREF G2 :E1E3) 2))
                               (*
                                (+ (* -2 (GREF G1 :E1E3) (GREF G2 :S))
                                   (* -2 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                                (GREF G2 :E2E3))
                               (* (GREF G1 :E1E2) (EXPT (GREF G2 :E2E3) 2))))
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2)
                                (EXPT (GREF G2 :E1E3) 2)
                                (EXPT (GREF G2 :E2E3) 2))
                             -1)
                            (+ (* -1 (GREF G1 :E3) (EXPT (GREF G2 :S) 2))
                               (* -1 (GREF G1 :E3) (EXPT (GREF G2 :E1E2) 2))
                               (*
                                (+ (* 2 (GREF G1 :E1) (GREF G2 :S))
                                   (* 2 (GREF G1 :E2) (GREF G2 :E1E2)))
                                (GREF G2 :E1E3))
                               (* (GREF G1 :E3) (EXPT (GREF G2 :E1E3) 2))
                               (*
                                (+ (* 2 (GREF G1 :E2) (GREF G2 :S))
                                   (* -2 (GREF G1 :E1) (GREF G2 :E1E2)))
                                (GREF G2 :E2E3))
                               (* (GREF G1 :E3) (EXPT (GREF G2 :E2E3) 2))))
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2)
                                (EXPT (GREF G2 :E1E3) 2)
                                (EXPT (GREF G2 :E2E3) 2))
                             -1)
                            (+ (* -1 (GREF G1 :E1E3) (EXPT (GREF G2 :S) 2))
                               (* -2 (GREF G1 :E2E3) (GREF G2 :S)
                                  (GREF G2 :E1E2))
                               (* (GREF G1 :E1E3) (EXPT (GREF G2 :E1E2) 2))
                               (* -2 (GREF G1 :E1E2) (GREF G2 :E1E2)
                                  (GREF G2 :E1E3))
                               (* -1 (GREF G1 :E1E3) (EXPT (GREF G2 :E1E3) 2))
                               (*
                                (+ (* 2 (GREF G1 :E1E2) (GREF G2 :S))
                                   (* -2 (GREF G1 :E2E3) (GREF G2 :E1E3)))
                                (GREF G2 :E2E3))
                               (* (GREF G1 :E1E3) (EXPT (GREF G2 :E2E3) 2))))
                         (*
                          (EXPT
                           (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2)
                              (EXPT (GREF G2 :E1E3) 2)
                              (EXPT (GREF G2 :E2E3) 2))
                           -1)
                          (+ (* (GREF G1 :E2E3) (EXPT (GREF G2 :S) 2))
                             (* -2 (GREF G1 :E1E3) (GREF G2 :S)
                                (GREF G2 :E1E2))
                             (* -1 (GREF G1 :E2E3) (EXPT (GREF G2 :E1E2) 2))
                             (* 2 (GREF G1 :E1E2) (GREF G2 :S) (GREF G2 :E1E3))
                             (* -1 (GREF G1 :E2E3) (EXPT (GREF G2 :E1E3) 2))
                             (*
                              (+ (* 2 (GREF G1 :E1E2) (GREF G2 :E1E2))
                                 (* 2 (GREF G1 :E1E3) (GREF G2 :E1E3)))
                              (GREF G2 :E2E3))
                             (* (GREF G1 :E2E3) (EXPT (GREF G2 :E2E3) 2))))
                         (GREF G1 :E1E2E3)))) 
(DEFMETHOD ROTATEG ((G1 SE3) (G2 RE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (GREF G1 :S)))) 
(DEFMETHOD ROTATEG ((G1 VE3) (G2 RE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR
                  (*
                   (EXPT
                    (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2)
                       (EXPT (GREF G2 :E1E3) 2) (EXPT (GREF G2 :E2E3) 2))
                    -1)
                   (+ (* (GREF G1 :E1) (EXPT (GREF G2 :S) 2))
                      (* 2 (GREF G1 :E2) (GREF G2 :S) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E1) (EXPT (GREF G2 :E1E2) 2))
                      (* 2 (GREF G1 :E3) (GREF G2 :S) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E1) (EXPT (GREF G2 :E1E3) 2))
                      (*
                       (+ (* 2 (GREF G1 :E3) (GREF G2 :E1E2))
                          (* -2 (GREF G1 :E2) (GREF G2 :E1E3)))
                       (GREF G2 :E2E3))
                      (* (GREF G1 :E1) (EXPT (GREF G2 :E2E3) 2))))
                  (* -1
                     (EXPT
                      (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2)
                         (EXPT (GREF G2 :E1E3) 2) (EXPT (GREF G2 :E2E3) 2))
                      -1)
                     (+ (* -1 (GREF G1 :E2) (EXPT (GREF G2 :S) 2))
                        (* 2 (GREF G1 :E1) (GREF G2 :S) (GREF G2 :E1E2))
                        (* (GREF G1 :E2) (EXPT (GREF G2 :E1E2) 2))
                        (* 2 (GREF G1 :E3) (GREF G2 :E1E2) (GREF G2 :E1E3))
                        (* -1 (GREF G1 :E2) (EXPT (GREF G2 :E1E3) 2))
                        (*
                         (+ (* -2 (GREF G1 :E3) (GREF G2 :S))
                            (* 2 (GREF G1 :E1) (GREF G2 :E1E3)))
                         (GREF G2 :E2E3))
                        (* (GREF G1 :E2) (EXPT (GREF G2 :E2E3) 2))))
                  (* -1
                     (EXPT
                      (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2)
                         (EXPT (GREF G2 :E1E3) 2) (EXPT (GREF G2 :E2E3) 2))
                      -1)
                     (+ (* -1 (GREF G1 :E3) (EXPT (GREF G2 :S) 2))
                        (* -1 (GREF G1 :E3) (EXPT (GREF G2 :E1E2) 2))
                        (*
                         (+ (* 2 (GREF G1 :E1) (GREF G2 :S))
                            (* 2 (GREF G1 :E2) (GREF G2 :E1E2)))
                         (GREF G2 :E1E3))
                        (* (GREF G1 :E3) (EXPT (GREF G2 :E1E3) 2))
                        (*
                         (+ (* 2 (GREF G1 :E2) (GREF G2 :S))
                            (* -2 (GREF G1 :E1) (GREF G2 :E1E2)))
                         (GREF G2 :E2E3))
                        (* (GREF G1 :E3) (EXPT (GREF G2 :E2E3) 2))))))) 
(DEFMETHOD ROTATEG ((G1 BVE3) (G2 RE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR
                  (* -1
                     (EXPT
                      (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2)
                         (EXPT (GREF G2 :E1E3) 2) (EXPT (GREF G2 :E2E3) 2))
                      -1)
                     (+ (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :S) 2))
                        (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E1E2) 2))
                        (*
                         (+ (* 2 (GREF G1 :E2E3) (GREF G2 :S))
                            (* -2 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                         (GREF G2 :E1E3))
                        (* (GREF G1 :E1E2) (EXPT (GREF G2 :E1E3) 2))
                        (*
                         (+ (* -2 (GREF G1 :E1E3) (GREF G2 :S))
                            (* -2 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                         (GREF G2 :E2E3))
                        (* (GREF G1 :E1E2) (EXPT (GREF G2 :E2E3) 2))))
                  (*
                   (EXPT
                    (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2)
                       (EXPT (GREF G2 :E1E3) 2) (EXPT (GREF G2 :E2E3) 2))
                    -1)
                   (+ (* (GREF G1 :E2E3) (EXPT (GREF G2 :S) 2))
                      (* -2 (GREF G1 :E1E3) (GREF G2 :S) (GREF G2 :E1E2))
                      (* -1 (GREF G1 :E2E3) (EXPT (GREF G2 :E1E2) 2))
                      (* 2 (GREF G1 :E1E2) (GREF G2 :S) (GREF G2 :E1E3))
                      (* -1 (GREF G1 :E2E3) (EXPT (GREF G2 :E1E3) 2))
                      (*
                       (+ (* 2 (GREF G1 :E1E2) (GREF G2 :E1E2))
                          (* 2 (GREF G1 :E1E3) (GREF G2 :E1E3)))
                       (GREF G2 :E2E3))
                      (* (GREF G1 :E2E3) (EXPT (GREF G2 :E2E3) 2))))
                  (* -1
                     (EXPT
                      (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2)
                         (EXPT (GREF G2 :E1E3) 2) (EXPT (GREF G2 :E2E3) 2))
                      -1)
                     (+ (* -1 (GREF G1 :E1E3) (EXPT (GREF G2 :S) 2))
                        (* -2 (GREF G1 :E2E3) (GREF G2 :S) (GREF G2 :E1E2))
                        (* (GREF G1 :E1E3) (EXPT (GREF G2 :E1E2) 2))
                        (* -2 (GREF G1 :E1E2) (GREF G2 :E1E2) (GREF G2 :E1E3))
                        (* -1 (GREF G1 :E1E3) (EXPT (GREF G2 :E1E3) 2))
                        (*
                         (+ (* 2 (GREF G1 :E1E2) (GREF G2 :S))
                            (* -2 (GREF G1 :E2E3) (GREF G2 :E1E3)))
                         (GREF G2 :E2E3))
                        (* (GREF G1 :E1E3) (EXPT (GREF G2 :E2E3) 2))))))) 
(DEFMETHOD ROTATEG ((G1 IE3) (G2 RE3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (GREF G1 :E1E2E3)))) 
(DEFMETHOD ROTATEG ((G1 RE3) (G2 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (GREF G1 :S)
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2)
                                (EXPT (GREF G2 :E1E3) 2)
                                (EXPT (GREF G2 :E2E3) 2))
                             -1)
                            (+ (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :S) 2))
                               (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E1E2) 2))
                               (*
                                (+ (* 2 (GREF G1 :E2E3) (GREF G2 :S))
                                   (* -2 (GREF G1 :E1E3) (GREF G2 :E1E2)))
                                (GREF G2 :E1E3))
                               (* (GREF G1 :E1E2) (EXPT (GREF G2 :E1E3) 2))
                               (*
                                (+ (* -2 (GREF G1 :E1E3) (GREF G2 :S))
                                   (* -2 (GREF G1 :E2E3) (GREF G2 :E1E2)))
                                (GREF G2 :E2E3))
                               (* (GREF G1 :E1E2) (EXPT (GREF G2 :E2E3) 2))))
                         (*
                          (EXPT
                           (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2)
                              (EXPT (GREF G2 :E1E3) 2)
                              (EXPT (GREF G2 :E2E3) 2))
                           -1)
                          (+ (* (GREF G1 :E2E3) (EXPT (GREF G2 :S) 2))
                             (* -2 (GREF G1 :E1E3) (GREF G2 :S)
                                (GREF G2 :E1E2))
                             (* -1 (GREF G1 :E2E3) (EXPT (GREF G2 :E1E2) 2))
                             (* 2 (GREF G1 :E1E2) (GREF G2 :S) (GREF G2 :E1E3))
                             (* -1 (GREF G1 :E2E3) (EXPT (GREF G2 :E1E3) 2))
                             (*
                              (+ (* 2 (GREF G1 :E1E2) (GREF G2 :E1E2))
                                 (* 2 (GREF G1 :E1E3) (GREF G2 :E1E3)))
                              (GREF G2 :E2E3))
                             (* (GREF G1 :E2E3) (EXPT (GREF G2 :E2E3) 2))))
                         (* -1
                            (EXPT
                             (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2)
                                (EXPT (GREF G2 :E1E3) 2)
                                (EXPT (GREF G2 :E2E3) 2))
                             -1)
                            (+ (* -1 (GREF G1 :E1E3) (EXPT (GREF G2 :S) 2))
                               (* -2 (GREF G1 :E2E3) (GREF G2 :S)
                                  (GREF G2 :E1E2))
                               (* (GREF G1 :E1E3) (EXPT (GREF G2 :E1E2) 2))
                               (* -2 (GREF G1 :E1E2) (GREF G2 :E1E2)
                                  (GREF G2 :E1E3))
                               (* -1 (GREF G1 :E1E3) (EXPT (GREF G2 :E1E3) 2))
                               (*
                                (+ (* 2 (GREF G1 :E1E2) (GREF G2 :S))
                                   (* -2 (GREF G1 :E2E3) (GREF G2 :E1E3)))
                                (GREF G2 :E2E3))
                               (* (GREF G1 :E1E3) (EXPT (GREF G2 :E2E3) 2))))))) 
(DEFMETHOD SPIN ((G1 E3) (G2 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2)
                       (EXPT (GREF G2 :E1E3) 2))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (EXPT (GREF G2 :E2E3) 2)))
                  (+ (* 2 (GREF G2 :S) (GREF G1 :E3) (GREF G2 :E1E3))
                     (* 2 (GREF G2 :S) (GREF G2 :E1E2) (GREF G1 :E2))
                     (*
                      (+ (EXPT (GREF G2 :S) 2) (* -1 (EXPT (GREF G2 :E1E2) 2))
                         (* -1 (EXPT (GREF G2 :E1E3) 2)))
                      (GREF G1 :E1))
                     (*
                      (+ (* 2 (GREF G2 :E1E2) (GREF G1 :E3))
                         (* -2 (GREF G2 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E2E3))
                     (* (GREF G1 :E1) (EXPT (GREF G2 :E2E3) 2)))
                  (+
                   (* (+ (EXPT (GREF G2 :S) 2) (* -1 (EXPT (GREF G2 :E1E2) 2)))
                      (GREF G1 :E2))
                   (* 2 (GREF G2 :S) (GREF G1 :E3) (GREF G2 :E2E3))
                   (* -1 (GREF G1 :E2) (EXPT (GREF G2 :E2E3) 2))
                   (* -2 (GREF G2 :S) (GREF G2 :E1E2) (GREF G1 :E1))
                   (*
                    (+ (* -2 (GREF G2 :E1E2) (GREF G1 :E3))
                       (* -2 (GREF G2 :E2E3) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (* (GREF G1 :E2) (EXPT (GREF G2 :E1E3) 2)))
                  (+
                   (* (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2))
                      (GREF G1 :E1E2))
                   (*
                    (+ (* 2 (GREF G1 :E2E3) (GREF G2 :E1E2))
                       (* 2 (GREF G2 :S) (GREF G1 :E1E3)))
                    (GREF G2 :E2E3))
                   (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E2E3) 2))
                   (*
                    (+ (* -2 (GREF G2 :S) (GREF G1 :E2E3))
                       (* 2 (GREF G2 :E1E2) (GREF G1 :E1E3)))
                    (GREF G2 :E1E3))
                   (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E1E3) 2)))
                  (+ (* (EXPT (GREF G2 :S) 2) (GREF G1 :E3))
                     (* -1 (GREF G1 :E3) (EXPT (GREF G2 :E1E3) 2))
                     (* -2 (GREF G2 :S) (GREF G1 :E2) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E3) (EXPT (GREF G2 :E2E3) 2))
                     (* -2 (GREF G2 :S) (GREF G2 :E1E3) (GREF G1 :E1))
                     (*
                      (+ (* -2 (GREF G2 :E1E3) (GREF G1 :E2))
                         (* 2 (GREF G2 :E2E3) (GREF G1 :E1)))
                      (GREF G2 :E1E2))
                     (* (GREF G1 :E3) (EXPT (GREF G2 :E1E2) 2)))
                  (+ (* (EXPT (GREF G2 :S) 2) (GREF G1 :E1E3))
                     (* (GREF G1 :E1E3) (EXPT (GREF G2 :E1E3) 2))
                     (*
                      (+ (* 2 (GREF G1 :E2E3) (GREF G2 :E1E3))
                         (* -2 (GREF G2 :S) (GREF G1 :E1E2)))
                      (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E1E3) (EXPT (GREF G2 :E2E3) 2))
                     (*
                      (+ (* 2 (GREF G2 :S) (GREF G1 :E2E3))
                         (* 2 (GREF G2 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (EXPT (GREF G2 :E1E2) 2)))
                  (+ (* -1 (GREF G1 :E2E3) (EXPT (GREF G2 :E1E2) 2))
                     (* -1 (GREF G1 :E2E3) (EXPT (GREF G2 :E1E3) 2))
                     (*
                      (+ (* 2 (GREF G1 :E1E3) (GREF G2 :E1E3))
                         (* 2 (GREF G2 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E2E3))
                     (* (GREF G1 :E2E3) (EXPT (GREF G2 :E2E3) 2))
                     (*
                      (+ (* -2 (GREF G2 :E1E2) (GREF G1 :E1E3))
                         (* 2 (GREF G2 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :S))
                     (* (GREF G1 :E2E3) (EXPT (GREF G2 :S) 2)))
                  (+ (* (GREF G1 :E1E2E3) (EXPT (GREF G2 :E1E2) 2))
                     (* (GREF G1 :E1E2E3) (EXPT (GREF G2 :E1E3) 2))
                     (* (GREF G1 :E1E2E3) (EXPT (GREF G2 :E2E3) 2))
                     (* (GREF G1 :E1E2E3) (EXPT (GREF G2 :S) 2)))))) 
(DEFMETHOD SPIN ((G1 SE3) (G2 RE3))
  (MAKE-INSTANCE 'SE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2)
                       (EXPT (GREF G2 :E1E3) 2))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (EXPT (GREF G2 :E2E3) 2)))))) 
(DEFMETHOD SPIN ((G1 VE3) (G2 RE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR
                  (+ (* 2 (GREF G2 :S) (GREF G1 :E3) (GREF G2 :E1E3))
                     (* 2 (GREF G2 :S) (GREF G2 :E1E2) (GREF G1 :E2))
                     (*
                      (+ (EXPT (GREF G2 :S) 2) (* -1 (EXPT (GREF G2 :E1E2) 2))
                         (* -1 (EXPT (GREF G2 :E1E3) 2)))
                      (GREF G1 :E1))
                     (*
                      (+ (* 2 (GREF G2 :E1E2) (GREF G1 :E3))
                         (* -2 (GREF G2 :E1E3) (GREF G1 :E2)))
                      (GREF G2 :E2E3))
                     (* (GREF G1 :E1) (EXPT (GREF G2 :E2E3) 2)))
                  (+
                   (* (+ (EXPT (GREF G2 :S) 2) (* -1 (EXPT (GREF G2 :E1E2) 2)))
                      (GREF G1 :E2))
                   (* 2 (GREF G2 :S) (GREF G1 :E3) (GREF G2 :E2E3))
                   (* -1 (GREF G1 :E2) (EXPT (GREF G2 :E2E3) 2))
                   (* -2 (GREF G2 :S) (GREF G2 :E1E2) (GREF G1 :E1))
                   (*
                    (+ (* -2 (GREF G2 :E1E2) (GREF G1 :E3))
                       (* -2 (GREF G2 :E2E3) (GREF G1 :E1)))
                    (GREF G2 :E1E3))
                   (* (GREF G1 :E2) (EXPT (GREF G2 :E1E3) 2)))
                  (+ (* (EXPT (GREF G2 :S) 2) (GREF G1 :E3))
                     (* -1 (GREF G1 :E3) (EXPT (GREF G2 :E1E3) 2))
                     (* -2 (GREF G2 :S) (GREF G1 :E2) (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E3) (EXPT (GREF G2 :E2E3) 2))
                     (* -2 (GREF G2 :S) (GREF G2 :E1E3) (GREF G1 :E1))
                     (*
                      (+ (* -2 (GREF G2 :E1E3) (GREF G1 :E2))
                         (* 2 (GREF G2 :E2E3) (GREF G1 :E1)))
                      (GREF G2 :E1E2))
                     (* (GREF G1 :E3) (EXPT (GREF G2 :E1E2) 2)))))) 
(DEFMETHOD SPIN ((G1 BVE3) (G2 RE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR
                  (+ (* 2 (GREF G2 :E2E3) (GREF G1 :E2E3) (GREF G2 :E1E2))
                     (* 2 (GREF G2 :E2E3) (GREF G2 :S) (GREF G1 :E1E3))
                     (*
                      (+ (* -1 (EXPT (GREF G2 :E2E3) 2)) (EXPT (GREF G2 :S) 2)
                         (EXPT (GREF G2 :E1E2) 2))
                      (GREF G1 :E1E2))
                     (*
                      (+ (* -2 (GREF G2 :S) (GREF G1 :E2E3))
                         (* 2 (GREF G2 :E1E2) (GREF G1 :E1E3)))
                      (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E1E3) 2)))
                  (+ (* (EXPT (GREF G2 :E2E3) 2) (GREF G1 :E2E3))
                     (* -1 (GREF G1 :E2E3) (EXPT (GREF G2 :E1E2) 2))
                     (* 2 (GREF G2 :E2E3) (GREF G1 :E1E3) (GREF G2 :E1E3))
                     (* -1 (GREF G1 :E2E3) (EXPT (GREF G2 :E1E3) 2))
                     (* 2 (GREF G2 :E2E3) (GREF G2 :E1E2) (GREF G1 :E1E2))
                     (*
                      (+ (* -2 (GREF G2 :E1E2) (GREF G1 :E1E3))
                         (* 2 (GREF G2 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :S))
                     (* (GREF G1 :E2E3) (EXPT (GREF G2 :S) 2)))
                  (+
                   (* (+ (* -1 (EXPT (GREF G2 :E2E3) 2)) (EXPT (GREF G2 :S) 2))
                      (GREF G1 :E1E3))
                   (* 2 (GREF G2 :E2E3) (GREF G1 :E2E3) (GREF G2 :E1E3))
                   (* (GREF G1 :E1E3) (EXPT (GREF G2 :E1E3) 2))
                   (* -2 (GREF G2 :E2E3) (GREF G2 :S) (GREF G1 :E1E2))
                   (*
                    (+ (* 2 (GREF G2 :S) (GREF G1 :E2E3))
                       (* 2 (GREF G2 :E1E3) (GREF G1 :E1E2)))
                    (GREF G2 :E1E2))
                   (* -1 (GREF G1 :E1E3) (EXPT (GREF G2 :E1E2) 2)))))) 
(DEFMETHOD SPIN ((G1 IE3) (G2 RE3))
  (MAKE-INSTANCE 'IE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (EXPT (GREF G2 :E2E3) 2) (EXPT (GREF G2 :E1E3) 2)
                       (EXPT (GREF G2 :E1E2) 2))
                    (GREF G1 :E1E2E3))
                   (* (GREF G1 :E1E2E3) (EXPT (GREF G2 :S) 2)))))) 
(DEFMETHOD SPIN ((G1 RE3) (G2 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2)
                       (EXPT (GREF G2 :E1E3) 2))
                    (GREF G1 :S))
                   (* (GREF G1 :S) (EXPT (GREF G2 :E2E3) 2)))
                  (+
                   (* (+ (EXPT (GREF G2 :S) 2) (EXPT (GREF G2 :E1E2) 2))
                      (GREF G1 :E1E2))
                   (*
                    (+ (* 2 (GREF G1 :E2E3) (GREF G2 :E1E2))
                       (* 2 (GREF G2 :S) (GREF G1 :E1E3)))
                    (GREF G2 :E2E3))
                   (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E2E3) 2))
                   (*
                    (+ (* -2 (GREF G2 :S) (GREF G1 :E2E3))
                       (* 2 (GREF G2 :E1E2) (GREF G1 :E1E3)))
                    (GREF G2 :E1E3))
                   (* -1 (GREF G1 :E1E2) (EXPT (GREF G2 :E1E3) 2)))
                  (+ (* -1 (GREF G1 :E2E3) (EXPT (GREF G2 :E1E2) 2))
                     (* -1 (GREF G1 :E2E3) (EXPT (GREF G2 :E1E3) 2))
                     (*
                      (+ (* 2 (GREF G1 :E1E3) (GREF G2 :E1E3))
                         (* 2 (GREF G2 :E1E2) (GREF G1 :E1E2)))
                      (GREF G2 :E2E3))
                     (* (GREF G1 :E2E3) (EXPT (GREF G2 :E2E3) 2))
                     (*
                      (+ (* -2 (GREF G2 :E1E2) (GREF G1 :E1E3))
                         (* 2 (GREF G2 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :S))
                     (* (GREF G1 :E2E3) (EXPT (GREF G2 :S) 2)))
                  (+ (* (EXPT (GREF G2 :S) 2) (GREF G1 :E1E3))
                     (* (GREF G1 :E1E3) (EXPT (GREF G2 :E1E3) 2))
                     (*
                      (+ (* 2 (GREF G1 :E2E3) (GREF G2 :E1E3))
                         (* -2 (GREF G2 :S) (GREF G1 :E1E2)))
                      (GREF G2 :E2E3))
                     (* -1 (GREF G1 :E1E3) (EXPT (GREF G2 :E2E3) 2))
                     (*
                      (+ (* 2 (GREF G2 :S) (GREF G1 :E2E3))
                         (* 2 (GREF G2 :E1E3) (GREF G1 :E1E2)))
                      (GREF G2 :E1E2))
                     (* -1 (GREF G1 :E1E3) (EXPT (GREF G2 :E1E2) 2)))))) 
(DEFMETHOD NORMR2 ((G1 E3))
  (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)
     (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E3) 2) (EXPT (GREF G1 :E1E3) 2)
     (EXPT (GREF G1 :E2E3) 2) (EXPT (GREF G1 :E1E2E3) 2))) 
(DEFMETHOD NORMR2 ((G1 SE3)) (EXPT (GREF G1 :S) 2)) 
(DEFMETHOD NORMR2 ((G1 VE3))
  (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E3) 2))) 
(DEFMETHOD NORMR2 ((G1 BVE3))
  (+ (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E1E3) 2)
     (EXPT (GREF G1 :E2E3) 2))) 
(DEFMETHOD NORMR2 ((G1 IE3)) (EXPT (GREF G1 :E1E2E3) 2)) 
(DEFMETHOD NORMR2 ((G1 RE3))
  (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E1E3) 2)
     (EXPT (GREF G1 :E2E3) 2))) 
(DEFMETHOD NORMR ((G1 E3))
  (*
   (EXPT
    (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)
       (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E3) 2) (EXPT (GREF G1 :E1E3) 2)
       (EXPT (GREF G1 :E2E3) 2) (EXPT (GREF G1 :E1E2E3) 2))
    1/2)
   (SIGNUM
    (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)
       (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E3) 2) (EXPT (GREF G1 :E1E3) 2)
       (EXPT (GREF G1 :E2E3) 2) (EXPT (GREF G1 :E1E2E3) 2))))) 
(DEFMETHOD NORMR ((G1 SE3))
  (* (ABS (GREF G1 :S)) (SIGNUM (EXPT (GREF G1 :S) 2)))) 
(DEFMETHOD NORMR ((G1 VE3))
  (*
   (EXPT
    (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E3) 2))
    1/2)
   (SIGNUM
    (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E3) 2))))) 
(DEFMETHOD NORMR ((G1 BVE3))
  (*
   (EXPT
    (+ (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E1E3) 2)
       (EXPT (GREF G1 :E2E3) 2))
    1/2)
   (SIGNUM
    (+ (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E1E3) 2)
       (EXPT (GREF G1 :E2E3) 2))))) 
(DEFMETHOD NORMR ((G1 IE3))
  (* (ABS (GREF G1 :E1E2E3)) (SIGNUM (EXPT (GREF G1 :E1E2E3) 2)))) 
(DEFMETHOD NORMR ((G1 RE3))
  (*
   (EXPT
    (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E1E3) 2)
       (EXPT (GREF G1 :E2E3) 2))
    1/2)
   (SIGNUM
    (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E1E3) 2)
       (EXPT (GREF G1 :E2E3) 2))))) 
(DEFMETHOD NORME2 ((G1 E3))
  (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)
     (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E3) 2) (EXPT (GREF G1 :E1E3) 2)
     (EXPT (GREF G1 :E2E3) 2) (EXPT (GREF G1 :E1E2E3) 2))) 
(DEFMETHOD NORME2 ((G1 SE3)) (EXPT (GREF G1 :S) 2)) 
(DEFMETHOD NORME2 ((G1 VE3))
  (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E3) 2))) 
(DEFMETHOD NORME2 ((G1 BVE3))
  (+ (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E1E3) 2)
     (EXPT (GREF G1 :E2E3) 2))) 
(DEFMETHOD NORME2 ((G1 IE3)) (EXPT (GREF G1 :E1E2E3) 2)) 
(DEFMETHOD NORME2 ((G1 RE3))
  (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E1E3) 2)
     (EXPT (GREF G1 :E2E3) 2))) 
(DEFMETHOD NORME ((G1 E3))
  (EXPT
   (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)
      (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E3) 2) (EXPT (GREF G1 :E1E3) 2)
      (EXPT (GREF G1 :E2E3) 2) (EXPT (GREF G1 :E1E2E3) 2))
   1/2)) 
(DEFMETHOD NORME ((G1 SE3)) (ABS (GREF G1 :S))) 
(DEFMETHOD NORME ((G1 VE3))
  (EXPT
   (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E3) 2))
   1/2)) 
(DEFMETHOD NORME ((G1 BVE3))
  (EXPT
   (+ (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E1E3) 2)
      (EXPT (GREF G1 :E2E3) 2))
   1/2)) 
(DEFMETHOD NORME ((G1 IE3)) (ABS (GREF G1 :E1E2E3))) 
(DEFMETHOD NORME ((G1 RE3))
  (EXPT
   (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E1E3) 2)
      (EXPT (GREF G1 :E2E3) 2))
   1/2)) 
(DEFMETHOD NORMINF ((G1 E3))
  (MAX (ABS (GREF G1 :S)) (ABS (GREF G1 :E1)) (ABS (GREF G1 :E2))
       (ABS (GREF G1 :E1E2)) (ABS (GREF G1 :E3)) (ABS (GREF G1 :E1E3))
       (ABS (GREF G1 :E2E3)) (ABS (GREF G1 :E1E2E3)))) 
(DEFMETHOD NORMINF ((G1 SE3)) (ABS (GREF G1 :S))) 
(DEFMETHOD NORMINF ((G1 VE3))
  (MAX (ABS (GREF G1 :E1)) (ABS (GREF G1 :E2)) (ABS (GREF G1 :E3)))) 
(DEFMETHOD NORMINF ((G1 BVE3))
  (MAX (ABS (GREF G1 :E1E2)) (ABS (GREF G1 :E1E3)) (ABS (GREF G1 :E2E3)))) 
(DEFMETHOD NORMINF ((G1 IE3)) (ABS (GREF G1 :E1E2E3))) 
(DEFMETHOD NORMINF ((G1 RE3))
  (MAX (ABS (GREF G1 :S)) (ABS (GREF G1 :E1E2)) (ABS (GREF G1 :E1E3))
       (ABS (GREF G1 :E2E3)))) 
(DEFMETHOD PSEUDOSCALAR ((G1 E3)) (MAKE-INSTANCE 'IE3 :COEF (VECTOR 1))) 
(DEFMETHOD PSEUDOSCALAR ((G1 SE3)) (MAKE-INSTANCE 'IE3 :COEF (VECTOR 1))) 
(DEFMETHOD PSEUDOSCALAR ((G1 VE3)) (MAKE-INSTANCE 'IE3 :COEF (VECTOR 1))) 
(DEFMETHOD PSEUDOSCALAR ((G1 BVE3)) (MAKE-INSTANCE 'IE3 :COEF (VECTOR 1))) 
(DEFMETHOD PSEUDOSCALAR ((G1 IE3)) (MAKE-INSTANCE 'IE3 :COEF (VECTOR 1))) 
(DEFMETHOD PSEUDOSCALAR ((G1 RE3)) (MAKE-INSTANCE 'IE3 :COEF (VECTOR 1))) 
(DEFMETHOD DUAL ((G1 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G1 :E1E2E3) (GREF G1 :E2E3)
                         (* -1 (GREF G1 :E1E3)) (* -1 (GREF G1 :E3))
                         (GREF G1 :E1E2) (GREF G1 :E2) (* -1 (GREF G1 :E1))
                         (* -1 (GREF G1 :S))))) 
(DEFMETHOD DUAL ((G1 SE3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (* -1 (GREF G1 :S))))) 
(DEFMETHOD DUAL ((G1 VE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* -1 (GREF G1 :E3)) (* -1 (GREF G1 :E1))
                         (GREF G1 :E2)))) 
(DEFMETHOD DUAL ((G1 BVE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (GREF G1 :E2E3) (* -1 (GREF G1 :E1E3))
                         (GREF G1 :E1E2)))) 
(DEFMETHOD DUAL ((G1 IE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (GREF G1 :E1E2E3)))) 
(DEFMETHOD DUAL ((G1 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 (GREF G1 :E2E3) (* -1 (GREF G1 :E1E3)) 0
                         (GREF G1 :E1E2) 0 0 (* -1 (GREF G1 :S))))) 
(DEFMETHOD UNITG ((G1 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (* (GREF G1 :S)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2)
                         (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E1E2) 2)
                         (EXPT (GREF G1 :E3) 2) (EXPT (GREF G1 :E1E3) 2)
                         (EXPT (GREF G1 :E2E3) 2) (EXPT (GREF G1 :E1E2E3) 2))
                      -1/2))
                  (* (GREF G1 :E1)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2)
                         (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E1E2) 2)
                         (EXPT (GREF G1 :E3) 2) (EXPT (GREF G1 :E1E3) 2)
                         (EXPT (GREF G1 :E2E3) 2) (EXPT (GREF G1 :E1E2E3) 2))
                      -1/2))
                  (* (GREF G1 :E2)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2)
                         (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E1E2) 2)
                         (EXPT (GREF G1 :E3) 2) (EXPT (GREF G1 :E1E3) 2)
                         (EXPT (GREF G1 :E2E3) 2) (EXPT (GREF G1 :E1E2E3) 2))
                      -1/2))
                  (* (GREF G1 :E1E2)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2)
                         (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E1E2) 2)
                         (EXPT (GREF G1 :E3) 2) (EXPT (GREF G1 :E1E3) 2)
                         (EXPT (GREF G1 :E2E3) 2) (EXPT (GREF G1 :E1E2E3) 2))
                      -1/2))
                  (* (GREF G1 :E3)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2)
                         (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E1E2) 2)
                         (EXPT (GREF G1 :E3) 2) (EXPT (GREF G1 :E1E3) 2)
                         (EXPT (GREF G1 :E2E3) 2) (EXPT (GREF G1 :E1E2E3) 2))
                      -1/2))
                  (* (GREF G1 :E1E3)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2)
                         (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E1E2) 2)
                         (EXPT (GREF G1 :E3) 2) (EXPT (GREF G1 :E1E3) 2)
                         (EXPT (GREF G1 :E2E3) 2) (EXPT (GREF G1 :E1E2E3) 2))
                      -1/2))
                  (* (GREF G1 :E2E3)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2)
                         (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E1E2) 2)
                         (EXPT (GREF G1 :E3) 2) (EXPT (GREF G1 :E1E3) 2)
                         (EXPT (GREF G1 :E2E3) 2) (EXPT (GREF G1 :E1E2E3) 2))
                      -1/2))
                  (* (GREF G1 :E1E2E3)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2)
                         (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E1E2) 2)
                         (EXPT (GREF G1 :E3) 2) (EXPT (GREF G1 :E1E3) 2)
                         (EXPT (GREF G1 :E2E3) 2) (EXPT (GREF G1 :E1E2E3) 2))
                      -1/2))))) 
(DEFMETHOD UNITG ((G1 SE3))
  (MAKE-INSTANCE 'SE3 :COEF
                 (VECTOR (* (GREF G1 :S) (EXPT (ABS (GREF G1 :S)) -1))))) 
(DEFMETHOD UNITG ((G1 VE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR
                  (* (GREF G1 :E1)
                     (EXPT
                      (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)
                         (EXPT (GREF G1 :E3) 2))
                      -1/2))
                  (* (GREF G1 :E2)
                     (EXPT
                      (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)
                         (EXPT (GREF G1 :E3) 2))
                      -1/2))
                  (* (GREF G1 :E3)
                     (EXPT
                      (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)
                         (EXPT (GREF G1 :E3) 2))
                      -1/2))))) 
(DEFMETHOD UNITG ((G1 BVE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR
                  (* (GREF G1 :E1E2)
                     (EXPT
                      (+ (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E1E3) 2)
                         (EXPT (GREF G1 :E2E3) 2))
                      -1/2))
                  (* (GREF G1 :E2E3)
                     (EXPT
                      (+ (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E1E3) 2)
                         (EXPT (GREF G1 :E2E3) 2))
                      -1/2))
                  (* (GREF G1 :E1E3)
                     (EXPT
                      (+ (EXPT (GREF G1 :E1E2) 2) (EXPT (GREF G1 :E1E3) 2)
                         (EXPT (GREF G1 :E2E3) 2))
                      -1/2))))) 
(DEFMETHOD UNITG ((G1 IE3))
  (MAKE-INSTANCE 'IE3 :COEF
                 (VECTOR
                  (* (GREF G1 :E1E2E3) (EXPT (ABS (GREF G1 :E1E2E3)) -1))))) 
(DEFMETHOD UNITG ((G1 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (* (GREF G1 :S)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2)
                         (EXPT (GREF G1 :E1E3) 2) (EXPT (GREF G1 :E2E3) 2))
                      -1/2))
                  (* (GREF G1 :E1E2)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2)
                         (EXPT (GREF G1 :E1E3) 2) (EXPT (GREF G1 :E2E3) 2))
                      -1/2))
                  (* (GREF G1 :E2E3)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2)
                         (EXPT (GREF G1 :E1E3) 2) (EXPT (GREF G1 :E2E3) 2))
                      -1/2))
                  (* (GREF G1 :E1E3)
                     (EXPT
                      (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1E2) 2)
                         (EXPT (GREF G1 :E1E3) 2) (EXPT (GREF G1 :E2E3) 2))
                      -1/2))))) 
(DEFMETHOD ONEG ((G1 E3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 1))) 
(DEFMETHOD ONEG ((G1 SE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 1))) 
(DEFMETHOD ONEG ((G1 VE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 1))) 
(DEFMETHOD ONEG ((G1 BVE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 1))) 
(DEFMETHOD ONEG ((G1 IE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 1))) 
(DEFMETHOD ONEG ((G1 RE3)) (MAKE-INSTANCE 'SE3 :COEF (VECTOR 1))) 
(DEFMETHOD SQUARE ((G1 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+ (EXPT (GREF G1 :S) 2) (EXPT (GREF G1 :E1) 2)
                     (EXPT (GREF G1 :E2) 2) (* -1 (EXPT (GREF G1 :E1E2) 2))
                     (EXPT (GREF G1 :E3) 2) (* -1 (EXPT (GREF G1 :E1E3) 2))
                     (* -1 (EXPT (GREF G1 :E2E3) 2))
                     (* -1 (EXPT (GREF G1 :E1E2E3) 2)))
                  (+ (* 2 (GREF G1 :E1) (GREF G1 :S))
                     (* -2 (GREF G1 :E1E2E3) (GREF G1 :E2E3)))
                  (+ (* 2 (GREF G1 :E2) (GREF G1 :S))
                     (* 2 (GREF G1 :E1E2E3) (GREF G1 :E1E3)))
                  (+ (* 2 (GREF G1 :E1E2) (GREF G1 :S))
                     (* 2 (GREF G1 :E1E2E3) (GREF G1 :E3)))
                  (+ (* 2 (GREF G1 :E3) (GREF G1 :S))
                     (* -2 (GREF G1 :E1E2E3) (GREF G1 :E1E2)))
                  (+ (* 2 (GREF G1 :E1E3) (GREF G1 :S))
                     (* -2 (GREF G1 :E1E2E3) (GREF G1 :E2)))
                  (+ (* 2 (GREF G1 :E2E3) (GREF G1 :S))
                     (* 2 (GREF G1 :E1E2E3) (GREF G1 :E1)))
                  (+ (* 2 (GREF G1 :E3) (GREF G1 :E1E2))
                     (* -2 (GREF G1 :E1E3) (GREF G1 :E2))
                     (* 2 (GREF G1 :E2E3) (GREF G1 :E1))
                     (* 2 (GREF G1 :E1E2E3) (GREF G1 :S)))))) 
(DEFMETHOD SQUARE ((G1 SE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (EXPT (GREF G1 :S) 2)))) 
(DEFMETHOD SQUARE ((G1 VE3))
  (MAKE-INSTANCE 'SE3 :COEF
                 (VECTOR
                  (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2)
                     (EXPT (GREF G1 :E3) 2))))) 
(DEFMETHOD SQUARE ((G1 BVE3))
  (MAKE-INSTANCE 'SE3 :COEF
                 (VECTOR
                  (+ (* -1 (EXPT (GREF G1 :E1E2) 2))
                     (* -1 (EXPT (GREF G1 :E1E3) 2))
                     (* -1 (EXPT (GREF G1 :E2E3) 2)))))) 
(DEFMETHOD SQUARE ((G1 IE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (* -1 (EXPT (GREF G1 :E1E2E3) 2))))) 
(DEFMETHOD SQUARE ((G1 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+ (EXPT (GREF G1 :S) 2) (* -1 (EXPT (GREF G1 :E1E2) 2))
                     (* -1 (EXPT (GREF G1 :E1E3) 2))
                     (* -1 (EXPT (GREF G1 :E2E3) 2)))
                  (* 2 (GREF G1 :E1E2) (GREF G1 :S))
                  (* 2 (GREF G1 :E2E3) (GREF G1 :S))
                  (* 2 (GREF G1 :E1E3) (GREF G1 :S))))) 
(DEFMETHOD CUBE ((G1 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -6 (GREF G1 :E3) (GREF G1 :E1E2))
                       (* 6 (GREF G1 :E1E3) (GREF G1 :E2))
                       (* -6 (GREF G1 :E2E3) (GREF G1 :E1)))
                    (GREF G1 :E1E2E3))
                   (*
                    (+ (* 3 (EXPT (GREF G1 :E3) 2))
                       (* -3 (EXPT (GREF G1 :E1E2) 2))
                       (* -3 (EXPT (GREF G1 :E1E3) 2))
                       (* 3 (EXPT (GREF G1 :E2) 2))
                       (* -3 (EXPT (GREF G1 :E2E3) 2))
                       (* 3 (EXPT (GREF G1 :E1) 2))
                       (* -3 (EXPT (GREF G1 :E1E2E3) 2)))
                    (GREF G1 :S))
                   (EXPT (GREF G1 :S) 3))
                  (+
                   (*
                    (+ (* 2 (GREF G1 :E2) (GREF G1 :E1E3))
                       (* -2 (GREF G1 :E3) (GREF G1 :E1E2)))
                    (GREF G1 :E2E3))
                   (* -6 (GREF G1 :E2E3) (GREF G1 :S) (GREF G1 :E1E2E3))
                   (*
                    (+ (EXPT (GREF G1 :E3) 2) (EXPT (GREF G1 :E2) 2)
                       (* -1 (EXPT (GREF G1 :E1E3) 2))
                       (* -1 (EXPT (GREF G1 :E1E2) 2))
                       (* -3 (EXPT (GREF G1 :E2E3) 2))
                       (* 3 (EXPT (GREF G1 :S) 2))
                       (* -3 (EXPT (GREF G1 :E1E2E3) 2)))
                    (GREF G1 :E1))
                   (EXPT (GREF G1 :E1) 3))
                  (+ (* 2 (GREF G1 :E1) (GREF G1 :E1E3) (GREF G1 :E2E3))
                     (* 2 (GREF G1 :E3) (GREF G1 :E1E3) (GREF G1 :E1E2))
                     (* 6 (GREF G1 :E1E3) (GREF G1 :S) (GREF G1 :E1E2E3))
                     (*
                      (+ (EXPT (GREF G1 :E3) 2) (EXPT (GREF G1 :E1) 2)
                         (* -3 (EXPT (GREF G1 :E1E3) 2))
                         (* 3 (EXPT (GREF G1 :S) 2))
                         (* -1 (EXPT (GREF G1 :E2E3) 2))
                         (* -1 (EXPT (GREF G1 :E1E2) 2))
                         (* -3 (EXPT (GREF G1 :E1E2E3) 2)))
                      (GREF G1 :E2))
                     (EXPT (GREF G1 :E2) 3))
                  (+ (* 2 (GREF G1 :E3) (GREF G1 :E1) (GREF G1 :E2E3))
                     (* -2 (GREF G1 :E3) (GREF G1 :E1E3) (GREF G1 :E2))
                     (* 6 (GREF G1 :E3) (GREF G1 :S) (GREF G1 :E1E2E3))
                     (*
                      (+ (* 3 (EXPT (GREF G1 :E3) 2))
                         (* 3 (EXPT (GREF G1 :S) 2))
                         (* -1 (EXPT (GREF G1 :E1E3) 2)) (EXPT (GREF G1 :E1) 2)
                         (* -1 (EXPT (GREF G1 :E2E3) 2)) (EXPT (GREF G1 :E2) 2)
                         (* -3 (EXPT (GREF G1 :E1E2E3) 2)))
                      (GREF G1 :E1E2))
                     (* -1 (EXPT (GREF G1 :E1E2) 3)))
                  (+ (* -2 (GREF G1 :E1) (GREF G1 :E1E2) (GREF G1 :E2E3))
                     (* 2 (GREF G1 :E2) (GREF G1 :E1E2) (GREF G1 :E1E3))
                     (* -6 (GREF G1 :E1E2) (GREF G1 :S) (GREF G1 :E1E2E3))
                     (*
                      (+ (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E1) 2)
                         (* -3 (EXPT (GREF G1 :E1E2) 2))
                         (* 3 (EXPT (GREF G1 :S) 2))
                         (* -1 (EXPT (GREF G1 :E2E3) 2))
                         (* -1 (EXPT (GREF G1 :E1E3) 2))
                         (* -3 (EXPT (GREF G1 :E1E2E3) 2)))
                      (GREF G1 :E3))
                     (EXPT (GREF G1 :E3) 3))
                  (+ (* -2 (GREF G1 :E2) (GREF G1 :E1) (GREF G1 :E2E3))
                     (* -2 (GREF G1 :E2) (GREF G1 :E1E2) (GREF G1 :E3))
                     (* -6 (GREF G1 :E2) (GREF G1 :S) (GREF G1 :E1E2E3))
                     (*
                      (+ (* 3 (EXPT (GREF G1 :E2) 2))
                         (* 3 (EXPT (GREF G1 :S) 2))
                         (* -1 (EXPT (GREF G1 :E1E2) 2)) (EXPT (GREF G1 :E1) 2)
                         (* -1 (EXPT (GREF G1 :E2E3) 2)) (EXPT (GREF G1 :E3) 2)
                         (* -3 (EXPT (GREF G1 :E1E2E3) 2)))
                      (GREF G1 :E1E3))
                     (* -1 (EXPT (GREF G1 :E1E3) 3)))
                  (+ (* -2 (GREF G1 :E1) (GREF G1 :E2) (GREF G1 :E1E3))
                     (* 2 (GREF G1 :E1) (GREF G1 :E1E2) (GREF G1 :E3))
                     (* 6 (GREF G1 :E1) (GREF G1 :S) (GREF G1 :E1E2E3))
                     (*
                      (+ (* 3 (EXPT (GREF G1 :E1) 2))
                         (* 3 (EXPT (GREF G1 :S) 2))
                         (* -1 (EXPT (GREF G1 :E1E2) 2)) (EXPT (GREF G1 :E2) 2)
                         (* -1 (EXPT (GREF G1 :E1E3) 2)) (EXPT (GREF G1 :E3) 2)
                         (* -3 (EXPT (GREF G1 :E1E2E3) 2)))
                      (GREF G1 :E2E3))
                     (* -1 (EXPT (GREF G1 :E2E3) 3)))
                  (+ (* 6 (GREF G1 :S) (GREF G1 :E1E2) (GREF G1 :E3))
                     (* -6 (GREF G1 :S) (GREF G1 :E2) (GREF G1 :E1E3))
                     (* 6 (GREF G1 :S) (GREF G1 :E1) (GREF G1 :E2E3))
                     (*
                      (+ (* 3 (EXPT (GREF G1 :S) 2))
                         (* 3 (EXPT (GREF G1 :E1) 2))
                         (* 3 (EXPT (GREF G1 :E2) 2))
                         (* -3 (EXPT (GREF G1 :E1E2) 2))
                         (* 3 (EXPT (GREF G1 :E3) 2))
                         (* -3 (EXPT (GREF G1 :E1E3) 2))
                         (* -3 (EXPT (GREF G1 :E2E3) 2)))
                      (GREF G1 :E1E2E3))
                     (* -1 (EXPT (GREF G1 :E1E2E3) 3)))))) 
(DEFMETHOD CUBE ((G1 SE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (EXPT (GREF G1 :S) 3)))) 
(DEFMETHOD CUBE ((G1 VE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR
                  (+
                   (* (+ (EXPT (GREF G1 :E2) 2) (EXPT (GREF G1 :E3) 2))
                      (GREF G1 :E1))
                   (EXPT (GREF G1 :E1) 3))
                  (+
                   (* (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E3) 2))
                      (GREF G1 :E2))
                   (EXPT (GREF G1 :E2) 3))
                  (+
                   (* (+ (EXPT (GREF G1 :E1) 2) (EXPT (GREF G1 :E2) 2))
                      (GREF G1 :E3))
                   (EXPT (GREF G1 :E3) 3))))) 
(DEFMETHOD CUBE ((G1 BVE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -1 (EXPT (GREF G1 :E1E3) 2))
                       (* -1 (EXPT (GREF G1 :E2E3) 2)))
                    (GREF G1 :E1E2))
                   (* -1 (EXPT (GREF G1 :E1E2) 3)))
                  (+
                   (*
                    (+ (* -1 (EXPT (GREF G1 :E1E2) 2))
                       (* -1 (EXPT (GREF G1 :E1E3) 2)))
                    (GREF G1 :E2E3))
                   (* -1 (EXPT (GREF G1 :E2E3) 3)))
                  (+
                   (*
                    (+ (* -1 (EXPT (GREF G1 :E1E2) 2))
                       (* -1 (EXPT (GREF G1 :E2E3) 2)))
                    (GREF G1 :E1E3))
                   (* -1 (EXPT (GREF G1 :E1E3) 3)))))) 
(DEFMETHOD CUBE ((G1 IE3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (* -1 (EXPT (GREF G1 :E1E2E3) 3))))) 
(DEFMETHOD CUBE ((G1 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR
                  (+
                   (*
                    (+ (* -3 (EXPT (GREF G1 :E1E3) 2))
                       (* -3 (EXPT (GREF G1 :E1E2) 2))
                       (* -3 (EXPT (GREF G1 :E2E3) 2)))
                    (GREF G1 :S))
                   (EXPT (GREF G1 :S) 3))
                  (+
                   (*
                    (+ (* -1 (EXPT (GREF G1 :E1E3) 2))
                       (* 3 (EXPT (GREF G1 :S) 2))
                       (* -1 (EXPT (GREF G1 :E2E3) 2)))
                    (GREF G1 :E1E2))
                   (* -1 (EXPT (GREF G1 :E1E2) 3)))
                  (+
                   (*
                    (+ (* 3 (EXPT (GREF G1 :S) 2))
                       (* -1 (EXPT (GREF G1 :E1E2) 2))
                       (* -1 (EXPT (GREF G1 :E1E3) 2)))
                    (GREF G1 :E2E3))
                   (* -1 (EXPT (GREF G1 :E2E3) 3)))
                  (+
                   (*
                    (+ (* -1 (EXPT (GREF G1 :E1E2) 2))
                       (* 3 (EXPT (GREF G1 :S) 2))
                       (* -1 (EXPT (GREF G1 :E2E3) 2)))
                    (GREF G1 :E1E3))
                   (* -1 (EXPT (GREF G1 :E1E3) 3)))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 E3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (+ (GREF G1 :S) (GREF G2 :S))
                         (+ (GREF G1 :E1) (GREF G2 :E1))
                         (+ (GREF G1 :E2) (GREF G2 :E2))
                         (+ (GREF G1 :E1E2) (GREF G2 :E1E2))
                         (+ (GREF G1 :E3) (GREF G2 :E3))
                         (+ (GREF G1 :E1E3) (GREF G2 :E1E3))
                         (+ (GREF G1 :E2E3) (GREF G2 :E2E3))
                         (+ (GREF G1 :E1E2E3) (GREF G2 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 E3) (G2 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (+ (GREF G1 :S) (GREF G2 :S)) (GREF G1 :E1)
                         (GREF G1 :E2) (GREF G1 :E1E2) (GREF G1 :E3)
                         (GREF G1 :E1E3) (GREF G1 :E2E3) (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 E3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G1 :S) (+ (GREF G1 :E1) (GREF G2 :E1))
                         (+ (GREF G1 :E2) (GREF G2 :E2)) (GREF G1 :E1E2)
                         (+ (GREF G1 :E3) (GREF G2 :E3)) (GREF G1 :E1E3)
                         (GREF G1 :E2E3) (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 E3) (G2 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G1 :S) (GREF G1 :E1) (GREF G1 :E2)
                         (+ (GREF G1 :E1E2) (GREF G2 :E1E2)) (GREF G1 :E3)
                         (+ (GREF G1 :E1E3) (GREF G2 :E1E3))
                         (+ (GREF G1 :E2E3) (GREF G2 :E2E3))
                         (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 E3) (G2 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G1 :S) (GREF G1 :E1) (GREF G1 :E2)
                         (GREF G1 :E1E2) (GREF G1 :E3) (GREF G1 :E1E3)
                         (GREF G1 :E2E3)
                         (+ (GREF G1 :E1E2E3) (GREF G2 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 E3) (G2 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (+ (GREF G1 :S) (GREF G2 :S)) (GREF G1 :E1)
                         (GREF G1 :E2) (+ (GREF G1 :E1E2) (GREF G2 :E1E2))
                         (GREF G1 :E3) (+ (GREF G1 :E1E3) (GREF G2 :E1E3))
                         (+ (GREF G1 :E2E3) (GREF G2 :E2E3))
                         (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 SE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (+ (GREF G1 :S) (GREF G2 :S)) (GREF G2 :E1)
                         (GREF G2 :E2) (GREF G2 :E1E2) (GREF G2 :E3)
                         (GREF G2 :E1E3) (GREF G2 :E2E3) (GREF G2 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 SE3) (G2 SE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (+ (GREF G1 :S) (GREF G2 :S))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 SE3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G1 :S) (GREF G2 :E1) (GREF G2 :E2) 0
                         (GREF G2 :E3) 0 0 0))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 SE3) (G2 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (GREF G1 :S) (GREF G2 :E1E2) (GREF G2 :E2E3)
                         (GREF G2 :E1E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 SE3) (G2 IE3))
  (MAKE-INSTANCE 'E3 :COEF (VECTOR (GREF G1 :S) 0 0 0 0 0 0 (GREF G2 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 SE3) (G2 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (+ (GREF G1 :S) (GREF G2 :S)) (GREF G2 :E1E2)
                         (GREF G2 :E2E3) (GREF G2 :E1E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 VE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G2 :S) (+ (GREF G1 :E1) (GREF G2 :E1))
                         (+ (GREF G1 :E2) (GREF G2 :E2)) (GREF G2 :E1E2)
                         (+ (GREF G1 :E3) (GREF G2 :E3)) (GREF G2 :E1E3)
                         (GREF G2 :E2E3) (GREF G2 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 VE3) (G2 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G2 :S) (GREF G1 :E1) (GREF G1 :E2) 0
                         (GREF G1 :E3) 0 0 0))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 VE3) (G2 VE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (+ (GREF G1 :E1) (GREF G2 :E1))
                         (+ (GREF G1 :E2) (GREF G2 :E2))
                         (+ (GREF G1 :E3) (GREF G2 :E3))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 VE3) (G2 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 (GREF G1 :E1) (GREF G1 :E2) (GREF G2 :E1E2)
                         (GREF G1 :E3) (GREF G2 :E1E3) (GREF G2 :E2E3) 0))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 VE3) (G2 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 (GREF G1 :E1) (GREF G1 :E2) 0 (GREF G1 :E3) 0 0
                         (GREF G2 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 VE3) (G2 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G2 :S) (GREF G1 :E1) (GREF G1 :E2)
                         (GREF G2 :E1E2) (GREF G1 :E3) (GREF G2 :E1E3)
                         (GREF G2 :E2E3) 0))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 BVE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G2 :S) (GREF G2 :E1) (GREF G2 :E2)
                         (+ (GREF G1 :E1E2) (GREF G2 :E1E2)) (GREF G2 :E3)
                         (+ (GREF G1 :E1E3) (GREF G2 :E1E3))
                         (+ (GREF G1 :E2E3) (GREF G2 :E2E3))
                         (GREF G2 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 BVE3) (G2 SE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (GREF G2 :S) (GREF G1 :E1E2) (GREF G1 :E2E3)
                         (GREF G1 :E1E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 BVE3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 (GREF G2 :E1) (GREF G2 :E2) (GREF G1 :E1E2)
                         (GREF G2 :E3) (GREF G1 :E1E3) (GREF G1 :E2E3) 0))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 BVE3) (G2 BVE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (+ (GREF G1 :E1E2) (GREF G2 :E1E2))
                         (+ (GREF G1 :E2E3) (GREF G2 :E2E3))
                         (+ (GREF G1 :E1E3) (GREF G2 :E1E3))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 BVE3) (G2 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 0 0 (GREF G1 :E1E2) 0 (GREF G1 :E1E3)
                         (GREF G1 :E2E3) (GREF G2 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 BVE3) (G2 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (GREF G2 :S) (+ (GREF G1 :E1E2) (GREF G2 :E1E2))
                         (+ (GREF G1 :E2E3) (GREF G2 :E2E3))
                         (+ (GREF G1 :E1E3) (GREF G2 :E1E3))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 IE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G2 :S) (GREF G2 :E1) (GREF G2 :E2)
                         (GREF G2 :E1E2) (GREF G2 :E3) (GREF G2 :E1E3)
                         (GREF G2 :E2E3)
                         (+ (GREF G1 :E1E2E3) (GREF G2 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 IE3) (G2 SE3))
  (MAKE-INSTANCE 'E3 :COEF (VECTOR (GREF G2 :S) 0 0 0 0 0 0 (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 IE3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 (GREF G2 :E1) (GREF G2 :E2) 0 (GREF G2 :E3) 0 0
                         (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 IE3) (G2 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 0 0 (GREF G2 :E1E2) 0 (GREF G2 :E1E3)
                         (GREF G2 :E2E3) (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 IE3) (G2 IE3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (+ (GREF G1 :E1E2E3) (GREF G2 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 IE3) (G2 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G2 :S) 0 0 (GREF G2 :E1E2) 0 (GREF G2 :E1E3)
                         (GREF G2 :E2E3) (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 RE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (+ (GREF G1 :S) (GREF G2 :S)) (GREF G2 :E1)
                         (GREF G2 :E2) (+ (GREF G1 :E1E2) (GREF G2 :E1E2))
                         (GREF G2 :E3) (+ (GREF G1 :E1E3) (GREF G2 :E1E3))
                         (+ (GREF G1 :E2E3) (GREF G2 :E2E3))
                         (GREF G2 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 RE3) (G2 SE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (+ (GREF G1 :S) (GREF G2 :S)) (GREF G1 :E1E2)
                         (GREF G1 :E2E3) (GREF G1 :E1E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 RE3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G1 :S) (GREF G2 :E1) (GREF G2 :E2)
                         (GREF G1 :E1E2) (GREF G2 :E3) (GREF G1 :E1E3)
                         (GREF G1 :E2E3) 0))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 RE3) (G2 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (GREF G1 :S) (+ (GREF G1 :E1E2) (GREF G2 :E1E2))
                         (+ (GREF G1 :E2E3) (GREF G2 :E2E3))
                         (+ (GREF G1 :E1E3) (GREF G2 :E1E3))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 RE3) (G2 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G1 :S) 0 0 (GREF G1 :E1E2) 0 (GREF G1 :E1E3)
                         (GREF G1 :E2E3) (GREF G2 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 RE3) (G2 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (+ (GREF G1 :S) (GREF G2 :S))
                         (+ (GREF G1 :E1E2) (GREF G2 :E1E2))
                         (+ (GREF G1 :E2E3) (GREF G2 :E2E3))
                         (+ (GREF G1 :E1E3) (GREF G2 :E1E3))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 E3) (G2 T))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (+ G2 (GREF G1 :S)) (GREF G1 :E1) (GREF G1 :E2)
                         (GREF G1 :E1E2) (GREF G1 :E3) (GREF G1 :E1E3)
                         (GREF G1 :E2E3) (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 SE3) (G2 T))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (+ G2 (GREF G1 :S))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 VE3) (G2 T))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR G2 (GREF G1 :E1) (GREF G1 :E2) 0 (GREF G1 :E3) 0 0 0))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 BVE3) (G2 T))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR G2 (GREF G1 :E1E2) (GREF G1 :E2E3) (GREF G1 :E1E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 IE3) (G2 T))
  (MAKE-INSTANCE 'E3 :COEF (VECTOR G2 0 0 0 0 0 0 (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 RE3) (G2 T))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (+ G2 (GREF G1 :S)) (GREF G1 :E1E2) (GREF G1 :E2E3)
                         (GREF G1 :E1E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 T) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (+ G1 (GREF G2 :S)) (GREF G2 :E1) (GREF G2 :E2)
                         (GREF G2 :E1E2) (GREF G2 :E3) (GREF G2 :E1E3)
                         (GREF G2 :E2E3) (GREF G2 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 T) (G2 SE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (+ G1 (GREF G2 :S))))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 T) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR G1 (GREF G2 :E1) (GREF G2 :E2) 0 (GREF G2 :E3) 0 0 0))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 T) (G2 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR G1 (GREF G2 :E1E2) (GREF G2 :E2E3) (GREF G2 :E1E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 T) (G2 IE3))
  (MAKE-INSTANCE 'E3 :COEF (VECTOR G1 0 0 0 0 0 0 (GREF G2 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO+ ((G1 T) (G2 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (+ G1 (GREF G2 :S)) (GREF G2 :E1E2) (GREF G2 :E2E3)
                         (GREF G2 :E1E3)))) 
(DEFMETHOD BLD-GEN::ONE- ((G1 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* -1 (GREF G1 :S)) (* -1 (GREF G1 :E1))
                         (* -1 (GREF G1 :E2)) (* -1 (GREF G1 :E1E2))
                         (* -1 (GREF G1 :E3)) (* -1 (GREF G1 :E1E3))
                         (* -1 (GREF G1 :E2E3)) (* -1 (GREF G1 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::ONE- ((G1 SE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (* -1 (GREF G1 :S))))) 
(DEFMETHOD BLD-GEN::ONE- ((G1 VE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* -1 (GREF G1 :E1)) (* -1 (GREF G1 :E2))
                         (* -1 (GREF G1 :E3))))) 
(DEFMETHOD BLD-GEN::ONE- ((G1 BVE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* -1 (GREF G1 :E1E2)) (* -1 (GREF G1 :E2E3))
                         (* -1 (GREF G1 :E1E3))))) 
(DEFMETHOD BLD-GEN::ONE- ((G1 IE3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (* -1 (GREF G1 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::ONE- ((G1 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (* -1 (GREF G1 :S)) (* -1 (GREF G1 :E1E2))
                         (* -1 (GREF G1 :E2E3)) (* -1 (GREF G1 :E1E3))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 E3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (+ (GREF G1 :S) (* -1 (GREF G2 :S)))
                         (+ (GREF G1 :E1) (* -1 (GREF G2 :E1)))
                         (+ (GREF G1 :E2) (* -1 (GREF G2 :E2)))
                         (+ (GREF G1 :E1E2) (* -1 (GREF G2 :E1E2)))
                         (+ (GREF G1 :E3) (* -1 (GREF G2 :E3)))
                         (+ (GREF G1 :E1E3) (* -1 (GREF G2 :E1E3)))
                         (+ (GREF G1 :E2E3) (* -1 (GREF G2 :E2E3)))
                         (+ (GREF G1 :E1E2E3) (* -1 (GREF G2 :E1E2E3)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 E3) (G2 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (+ (GREF G1 :S) (* -1 (GREF G2 :S))) (GREF G1 :E1)
                         (GREF G1 :E2) (GREF G1 :E1E2) (GREF G1 :E3)
                         (GREF G1 :E1E3) (GREF G1 :E2E3) (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 E3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G1 :S) (+ (GREF G1 :E1) (* -1 (GREF G2 :E1)))
                         (+ (GREF G1 :E2) (* -1 (GREF G2 :E2))) (GREF G1 :E1E2)
                         (+ (GREF G1 :E3) (* -1 (GREF G2 :E3))) (GREF G1 :E1E3)
                         (GREF G1 :E2E3) (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 E3) (G2 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G1 :S) (GREF G1 :E1) (GREF G1 :E2)
                         (+ (GREF G1 :E1E2) (* -1 (GREF G2 :E1E2)))
                         (GREF G1 :E3)
                         (+ (GREF G1 :E1E3) (* -1 (GREF G2 :E1E3)))
                         (+ (GREF G1 :E2E3) (* -1 (GREF G2 :E2E3)))
                         (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 E3) (G2 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G1 :S) (GREF G1 :E1) (GREF G1 :E2)
                         (GREF G1 :E1E2) (GREF G1 :E3) (GREF G1 :E1E3)
                         (GREF G1 :E2E3)
                         (+ (GREF G1 :E1E2E3) (* -1 (GREF G2 :E1E2E3)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 E3) (G2 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (+ (GREF G1 :S) (* -1 (GREF G2 :S))) (GREF G1 :E1)
                         (GREF G1 :E2)
                         (+ (GREF G1 :E1E2) (* -1 (GREF G2 :E1E2)))
                         (GREF G1 :E3)
                         (+ (GREF G1 :E1E3) (* -1 (GREF G2 :E1E3)))
                         (+ (GREF G1 :E2E3) (* -1 (GREF G2 :E2E3)))
                         (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 SE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (+ (GREF G1 :S) (* -1 (GREF G2 :S)))
                         (* -1 (GREF G2 :E1)) (* -1 (GREF G2 :E2))
                         (* -1 (GREF G2 :E1E2)) (* -1 (GREF G2 :E3))
                         (* -1 (GREF G2 :E1E3)) (* -1 (GREF G2 :E2E3))
                         (* -1 (GREF G2 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 SE3) (G2 SE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (+ (GREF G1 :S) (* -1 (GREF G2 :S)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 SE3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G1 :S) (* -1 (GREF G2 :E1)) (* -1 (GREF G2 :E2))
                         0 (* -1 (GREF G2 :E3)) 0 0 0))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 SE3) (G2 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (GREF G1 :S) (* -1 (GREF G2 :E1E2))
                         (* -1 (GREF G2 :E2E3)) (* -1 (GREF G2 :E1E3))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 SE3) (G2 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G1 :S) 0 0 0 0 0 0 (* -1 (GREF G2 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 SE3) (G2 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (+ (GREF G1 :S) (* -1 (GREF G2 :S)))
                         (* -1 (GREF G2 :E1E2)) (* -1 (GREF G2 :E2E3))
                         (* -1 (GREF G2 :E1E3))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 VE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* -1 (GREF G2 :S))
                         (+ (GREF G1 :E1) (* -1 (GREF G2 :E1)))
                         (+ (GREF G1 :E2) (* -1 (GREF G2 :E2)))
                         (* -1 (GREF G2 :E1E2))
                         (+ (GREF G1 :E3) (* -1 (GREF G2 :E3)))
                         (* -1 (GREF G2 :E1E3)) (* -1 (GREF G2 :E2E3))
                         (* -1 (GREF G2 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 VE3) (G2 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* -1 (GREF G2 :S)) (GREF G1 :E1) (GREF G1 :E2) 0
                         (GREF G1 :E3) 0 0 0))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 VE3) (G2 VE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (+ (GREF G1 :E1) (* -1 (GREF G2 :E1)))
                         (+ (GREF G1 :E2) (* -1 (GREF G2 :E2)))
                         (+ (GREF G1 :E3) (* -1 (GREF G2 :E3)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 VE3) (G2 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 (GREF G1 :E1) (GREF G1 :E2) (* -1 (GREF G2 :E1E2))
                         (GREF G1 :E3) (* -1 (GREF G2 :E1E3))
                         (* -1 (GREF G2 :E2E3)) 0))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 VE3) (G2 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 (GREF G1 :E1) (GREF G1 :E2) 0 (GREF G1 :E3) 0 0
                         (* -1 (GREF G2 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 VE3) (G2 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* -1 (GREF G2 :S)) (GREF G1 :E1) (GREF G1 :E2)
                         (* -1 (GREF G2 :E1E2)) (GREF G1 :E3)
                         (* -1 (GREF G2 :E1E3)) (* -1 (GREF G2 :E2E3)) 0))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 BVE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* -1 (GREF G2 :S)) (* -1 (GREF G2 :E1))
                         (* -1 (GREF G2 :E2))
                         (+ (GREF G1 :E1E2) (* -1 (GREF G2 :E1E2)))
                         (* -1 (GREF G2 :E3))
                         (+ (GREF G1 :E1E3) (* -1 (GREF G2 :E1E3)))
                         (+ (GREF G1 :E2E3) (* -1 (GREF G2 :E2E3)))
                         (* -1 (GREF G2 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 BVE3) (G2 SE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (* -1 (GREF G2 :S)) (GREF G1 :E1E2) (GREF G1 :E2E3)
                         (GREF G1 :E1E3)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 BVE3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 (* -1 (GREF G2 :E1)) (* -1 (GREF G2 :E2))
                         (GREF G1 :E1E2) (* -1 (GREF G2 :E3)) (GREF G1 :E1E3)
                         (GREF G1 :E2E3) 0))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 BVE3) (G2 BVE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (+ (GREF G1 :E1E2) (* -1 (GREF G2 :E1E2)))
                         (+ (GREF G1 :E2E3) (* -1 (GREF G2 :E2E3)))
                         (+ (GREF G1 :E1E3) (* -1 (GREF G2 :E1E3)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 BVE3) (G2 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 0 0 (GREF G1 :E1E2) 0 (GREF G1 :E1E3)
                         (GREF G1 :E2E3) (* -1 (GREF G2 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 BVE3) (G2 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (* -1 (GREF G2 :S))
                         (+ (GREF G1 :E1E2) (* -1 (GREF G2 :E1E2)))
                         (+ (GREF G1 :E2E3) (* -1 (GREF G2 :E2E3)))
                         (+ (GREF G1 :E1E3) (* -1 (GREF G2 :E1E3)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 IE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* -1 (GREF G2 :S)) (* -1 (GREF G2 :E1))
                         (* -1 (GREF G2 :E2)) (* -1 (GREF G2 :E1E2))
                         (* -1 (GREF G2 :E3)) (* -1 (GREF G2 :E1E3))
                         (* -1 (GREF G2 :E2E3))
                         (+ (GREF G1 :E1E2E3) (* -1 (GREF G2 :E1E2E3)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 IE3) (G2 SE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* -1 (GREF G2 :S)) 0 0 0 0 0 0 (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 IE3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 (* -1 (GREF G2 :E1)) (* -1 (GREF G2 :E2)) 0
                         (* -1 (GREF G2 :E3)) 0 0 (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 IE3) (G2 BVE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR 0 0 0 (* -1 (GREF G2 :E1E2)) 0 (* -1 (GREF G2 :E1E3))
                         (* -1 (GREF G2 :E2E3)) (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 IE3) (G2 IE3))
  (MAKE-INSTANCE 'IE3 :COEF
                 (VECTOR (+ (GREF G1 :E1E2E3) (* -1 (GREF G2 :E1E2E3)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 IE3) (G2 RE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* -1 (GREF G2 :S)) 0 0 (* -1 (GREF G2 :E1E2)) 0
                         (* -1 (GREF G2 :E1E3)) (* -1 (GREF G2 :E2E3))
                         (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 RE3) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (+ (GREF G1 :S) (* -1 (GREF G2 :S)))
                         (* -1 (GREF G2 :E1)) (* -1 (GREF G2 :E2))
                         (+ (GREF G1 :E1E2) (* -1 (GREF G2 :E1E2)))
                         (* -1 (GREF G2 :E3))
                         (+ (GREF G1 :E1E3) (* -1 (GREF G2 :E1E3)))
                         (+ (GREF G1 :E2E3) (* -1 (GREF G2 :E2E3)))
                         (* -1 (GREF G2 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 RE3) (G2 SE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (+ (GREF G1 :S) (* -1 (GREF G2 :S))) (GREF G1 :E1E2)
                         (GREF G1 :E2E3) (GREF G1 :E1E3)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 RE3) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G1 :S) (* -1 (GREF G2 :E1)) (* -1 (GREF G2 :E2))
                         (GREF G1 :E1E2) (* -1 (GREF G2 :E3)) (GREF G1 :E1E3)
                         (GREF G1 :E2E3) 0))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 RE3) (G2 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (GREF G1 :S)
                         (+ (GREF G1 :E1E2) (* -1 (GREF G2 :E1E2)))
                         (+ (GREF G1 :E2E3) (* -1 (GREF G2 :E2E3)))
                         (+ (GREF G1 :E1E3) (* -1 (GREF G2 :E1E3)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 RE3) (G2 IE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (GREF G1 :S) 0 0 (GREF G1 :E1E2) 0 (GREF G1 :E1E3)
                         (GREF G1 :E2E3) (* -1 (GREF G2 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 RE3) (G2 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (+ (GREF G1 :S) (* -1 (GREF G2 :S)))
                         (+ (GREF G1 :E1E2) (* -1 (GREF G2 :E1E2)))
                         (+ (GREF G1 :E2E3) (* -1 (GREF G2 :E2E3)))
                         (+ (GREF G1 :E1E3) (* -1 (GREF G2 :E1E3)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 E3) (G2 T))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (+ (* -1 G2) (GREF G1 :S)) (GREF G1 :E1) (GREF G1 :E2)
                         (GREF G1 :E1E2) (GREF G1 :E3) (GREF G1 :E1E3)
                         (GREF G1 :E2E3) (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 SE3) (G2 T))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (+ (* -1 G2) (GREF G1 :S))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 VE3) (G2 T))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* -1 G2) (GREF G1 :E1) (GREF G1 :E2) 0 (GREF G1 :E3)
                         0 0 0))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 BVE3) (G2 T))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (* -1 G2) (GREF G1 :E1E2) (GREF G1 :E2E3)
                         (GREF G1 :E1E3)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 IE3) (G2 T))
  (MAKE-INSTANCE 'E3 :COEF (VECTOR (* -1 G2) 0 0 0 0 0 0 (GREF G1 :E1E2E3)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 RE3) (G2 T))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (+ (* -1 G2) (GREF G1 :S)) (GREF G1 :E1E2)
                         (GREF G1 :E2E3) (GREF G1 :E1E3)))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 T) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (+ G1 (* -1 (GREF G2 :S))) (* -1 (GREF G2 :E1))
                         (* -1 (GREF G2 :E2)) (* -1 (GREF G2 :E1E2))
                         (* -1 (GREF G2 :E3)) (* -1 (GREF G2 :E1E3))
                         (* -1 (GREF G2 :E2E3)) (* -1 (GREF G2 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 T) (G2 SE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (+ G1 (* -1 (GREF G2 :S)))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 T) (G2 VE3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR G1 (* -1 (GREF G2 :E1)) (* -1 (GREF G2 :E2)) 0
                         (* -1 (GREF G2 :E3)) 0 0 0))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 T) (G2 BVE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR G1 (* -1 (GREF G2 :E1E2)) (* -1 (GREF G2 :E2E3))
                         (* -1 (GREF G2 :E1E3))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 T) (G2 IE3))
  (MAKE-INSTANCE 'E3 :COEF (VECTOR G1 0 0 0 0 0 0 (* -1 (GREF G2 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO- ((G1 T) (G2 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (+ G1 (* -1 (GREF G2 :S))) (* -1 (GREF G2 :E1E2))
                         (* -1 (GREF G2 :E2E3)) (* -1 (GREF G2 :E1E3))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 E3) (G2 T))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* G2 (GREF G1 :S)) (* G2 (GREF G1 :E1))
                         (* G2 (GREF G1 :E2)) (* G2 (GREF G1 :E1E2))
                         (* G2 (GREF G1 :E3)) (* G2 (GREF G1 :E1E3))
                         (* G2 (GREF G1 :E2E3)) (* G2 (GREF G1 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 SE3) (G2 T))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (* G2 (GREF G1 :S))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 VE3) (G2 T))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* G2 (GREF G1 :E1)) (* G2 (GREF G1 :E2))
                         (* G2 (GREF G1 :E3))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 BVE3) (G2 T))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* G2 (GREF G1 :E1E2)) (* G2 (GREF G1 :E2E3))
                         (* G2 (GREF G1 :E1E3))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 IE3) (G2 T))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (* G2 (GREF G1 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 RE3) (G2 T))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (* G2 (GREF G1 :S)) (* G2 (GREF G1 :E1E2))
                         (* G2 (GREF G1 :E2E3)) (* G2 (GREF G1 :E1E3))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 T) (G2 E3))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* G1 (GREF G2 :S)) (* G1 (GREF G2 :E1))
                         (* G1 (GREF G2 :E2)) (* G1 (GREF G2 :E1E2))
                         (* G1 (GREF G2 :E3)) (* G1 (GREF G2 :E1E3))
                         (* G1 (GREF G2 :E2E3)) (* G1 (GREF G2 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 T) (G2 SE3))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (* G1 (GREF G2 :S))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 T) (G2 VE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* G1 (GREF G2 :E1)) (* G1 (GREF G2 :E2))
                         (* G1 (GREF G2 :E3))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 T) (G2 BVE3))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* G1 (GREF G2 :E1E2)) (* G1 (GREF G2 :E2E3))
                         (* G1 (GREF G2 :E1E3))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 T) (G2 IE3))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (* G1 (GREF G2 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO* ((G1 T) (G2 RE3))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (* G1 (GREF G2 :S)) (* G1 (GREF G2 :E1E2))
                         (* G1 (GREF G2 :E2E3)) (* G1 (GREF G2 :E1E3))))) 
(DEFMETHOD BLD-GEN::TWO/ ((G1 E3) (G2 T))
  (MAKE-INSTANCE 'E3 :COEF
                 (VECTOR (* (EXPT G2 -1) (GREF G1 :S))
                         (* (EXPT G2 -1) (GREF G1 :E1))
                         (* (EXPT G2 -1) (GREF G1 :E2))
                         (* (EXPT G2 -1) (GREF G1 :E1E2))
                         (* (EXPT G2 -1) (GREF G1 :E3))
                         (* (EXPT G2 -1) (GREF G1 :E1E3))
                         (* (EXPT G2 -1) (GREF G1 :E2E3))
                         (* (EXPT G2 -1) (GREF G1 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO/ ((G1 SE3) (G2 T))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (* (EXPT G2 -1) (GREF G1 :S))))) 
(DEFMETHOD BLD-GEN::TWO/ ((G1 VE3) (G2 T))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR (* (EXPT G2 -1) (GREF G1 :E1))
                         (* (EXPT G2 -1) (GREF G1 :E2))
                         (* (EXPT G2 -1) (GREF G1 :E3))))) 
(DEFMETHOD BLD-GEN::TWO/ ((G1 BVE3) (G2 T))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (* (EXPT G2 -1) (GREF G1 :E1E2))
                         (* (EXPT G2 -1) (GREF G1 :E2E3))
                         (* (EXPT G2 -1) (GREF G1 :E1E3))))) 
(DEFMETHOD BLD-GEN::TWO/ ((G1 IE3) (G2 T))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (* (EXPT G2 -1) (GREF G1 :E1E2E3))))) 
(DEFMETHOD BLD-GEN::TWO/ ((G1 RE3) (G2 T))
  (MAKE-INSTANCE 'RE3 :COEF
                 (VECTOR (* (EXPT G2 -1) (GREF G1 :S))
                         (* (EXPT G2 -1) (GREF G1 :E1E2))
                         (* (EXPT G2 -1) (GREF G1 :E2E3))
                         (* (EXPT G2 -1) (GREF G1 :E1E3))))) 
(DEFMETHOD GRADEN ((G E3) (N (EQL 0)))
  (MAKE-INSTANCE 'SE3 :COEF (VECTOR (GREF G :S)))) 
(DEFMETHOD GRADEN ((G E3) (N (EQL 1)))
  (MAKE-INSTANCE 'VE3 :COEF (VECTOR (GREF G :E1) (GREF G :E2) (GREF G :E3)))) 
(DEFMETHOD GRADEN ((G E3) (N (EQL 2)))
  (MAKE-INSTANCE 'BVE3 :COEF
                 (VECTOR (GREF G :E1E2) (GREF G :E2E3) (GREF G :E1E3)))) 
(DEFMETHOD GRADEN ((G E3) (N (EQL 3)))
  (MAKE-INSTANCE 'IE3 :COEF (VECTOR (GREF G :E1E2E3)))) 
(DEFGENERIC *X2
    (V1 V2)) 
(DEFMETHOD *X2 ((G1 VE3) (G2 VE3))
  (MAKE-INSTANCE 'VE3 :COEF
                 (VECTOR
                  (+ (* (GREF G1 :E2) (GREF G2 :E3))
                     (* -1 (GREF G1 :E3) (GREF G2 :E2)))
                  (+ (* -1 (GREF G1 :E1) (GREF G2 :E3))
                     (* (GREF G1 :E3) (GREF G2 :E1)))
                  (+ (* (GREF G1 :E1) (GREF G2 :E2))
                     (* -1 (GREF G1 :E2) (GREF G2 :E1)))))) 
(DEFUN *X (&REST VS) (REDUCE #'*X2 VS)) 