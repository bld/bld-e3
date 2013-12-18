
(DEFPACKAGE BLD-E3
  (:USE :CL :BLD-GA)
  (:SHADOWING-IMPORT-FROM :BLD-GEN
                          +
                          -
                          *
                          /
                          EXPT
                          SIN
                          COS
                          TAN
                          ATAN
                          ASIN
                          ACOS
                          SINH
                          COSH
                          TANH
                          ASINH
                          ACOSH
                          ATANH
                          LOG
                          EXP
                          SQRT
                          ABS
                          MIN
                          MAX
                          SIGNUM)
  (:EXPORT :E3 :E3 :SE3 :VE3 :BVE3 :IE3 :RE3 :*X2 :*X)) 