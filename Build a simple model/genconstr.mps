NAME Genconstr
OBJSENSE MAX
ROWS
 N  OBJ
 E  CNSTR_X[0]
 E  CNSTR_X[1]
 E  CNSTR_X[2]
 E  CNSTR_X[3]
 G  CNSTR_Obj1
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    X[0]      CNSTR_X[0]  1
    X[1]      CNSTR_X[1]  1
    X[2]      CNSTR_X[2]  1
    X[3]      CNSTR_X[3]  1
    NotX[0]   CNSTR_X[0]  1
    NotX[1]   CNSTR_X[1]  1
    NotX[2]   CNSTR_X[2]  1
    NotX[3]   CNSTR_X[3]  1
    Clause[0]  OBJ       0
    Clause[0]  CNSTR_Obj1  1
    Clause[1]  OBJ       0
    Clause[1]  CNSTR_Obj1  1
    Clause[2]  OBJ       0
    Clause[2]  CNSTR_Obj1  1
    Clause[3]  OBJ       0
    Clause[3]  CNSTR_Obj1  1
    Clause[4]  OBJ       0
    Clause[4]  CNSTR_Obj1  1
    Clause[5]  OBJ       0
    Clause[5]  CNSTR_Obj1  1
    Clause[6]  OBJ       0
    Clause[6]  CNSTR_Obj1  1
    Clause[7]  OBJ       0
    Clause[7]  CNSTR_Obj1  1
    Obj1      OBJ       1
    Obj2      OBJ       1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      CNSTR_X[0]  1
    RHS1      CNSTR_X[1]  1
    RHS1      CNSTR_X[2]  1
    RHS1      CNSTR_X[3]  1
    RHS1      CNSTR_Obj1  4
BOUNDS
 BV BND1      X[0]    
 BV BND1      X[1]    
 BV BND1      X[2]    
 BV BND1      X[3]    
 BV BND1      NotX[0] 
 BV BND1      NotX[1] 
 BV BND1      NotX[2] 
 BV BND1      NotX[3] 
 BV BND1      Clause[0]
 BV BND1      Clause[1]
 BV BND1      Clause[2]
 BV BND1      Clause[3]
 BV BND1      Clause[4]
 BV BND1      Clause[5]
 BV BND1      Clause[6]
 BV BND1      Clause[7]
 BV BND1      Obj1    
 BV BND1      Obj2    
INDICATORS
 IF CNSTR_Obj1  Obj2      1
GENCONS
 OR GC0
    Clause[0]
    X[0]
    NotX[1]
    X[2]
 OR GC1
    Clause[1]
    X[1]
    NotX[2]
    X[3]
 OR GC2
    Clause[2]
    X[2]
    NotX[3]
    X[0]
 OR GC3
    Clause[3]
    X[3]
    NotX[0]
    X[1]
 OR GC4
    Clause[4]
    NotX[0]
    NotX[1]
    X[2]
 OR GC5
    Clause[5]
    NotX[1]
    NotX[2]
    X[3]
 OR GC6
    Clause[6]
    NotX[2]
    NotX[3]
    X[0]
 OR GC7
    Clause[7]
    NotX[3]
    NotX[0]
    X[1]
 MIN CNSTR_Obj0
    Obj1
    Clause[0]
    Clause[1]
    Clause[2]
    Clause[3]
    Clause[4]
    Clause[5]
    Clause[6]
    Clause[7]
ENDATA
