\ Model Genconstr
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  -0 Clause[0] + -0 Clause[1] + -0 Clause[2] + -0 Clause[3] + -0 Clause[4]
   + -0 Clause[5] + -0 Clause[6] + -0 Clause[7] + Obj1 + Obj2
Subject To
 CNSTR_X[0]: X[0] + NotX[0] = 1
 CNSTR_X[1]: X[1] + NotX[1] = 1
 CNSTR_X[2]: X[2] + NotX[2] = 1
 CNSTR_X[3]: X[3] + NotX[3] = 1
 CNSTR_Obj1: Obj2 = 1 -> Clause[0] + Clause[1] + Clause[2] + Clause[3]
   + Clause[4] + Clause[5] + Clause[6] + Clause[7] >= 4
Bounds
Binaries
 X[0] X[1] X[2] X[3] NotX[0] NotX[1] NotX[2] NotX[3] Clause[0] Clause[1]
 Clause[2] Clause[3] Clause[4] Clause[5] Clause[6] Clause[7] Obj1 Obj2
General Constraints
 GC0: Clause[0] = OR ( X[0] , NotX[1] , X[2] )
 GC1: Clause[1] = OR ( X[1] , NotX[2] , X[3] )
 GC2: Clause[2] = OR ( X[2] , NotX[3] , X[0] )
 GC3: Clause[3] = OR ( X[3] , NotX[0] , X[1] )
 GC4: Clause[4] = OR ( NotX[0] , NotX[1] , X[2] )
 GC5: Clause[5] = OR ( NotX[1] , NotX[2] , X[3] )
 GC6: Clause[6] = OR ( NotX[2] , NotX[3] , X[0] )
 GC7: Clause[7] = OR ( NotX[3] , NotX[0] , X[1] )
 CNSTR_Obj0: Obj1 = MIN ( Clause[0] , Clause[1] , Clause[2] , Clause[3] ,
   Clause[4] , Clause[5] , Clause[6] , Clause[7] )
End
