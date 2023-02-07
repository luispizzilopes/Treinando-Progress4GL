DEFINE VARIABLE Inumero1 AS INT64       NO-UNDO.
DEFINE VARIABLE Inumero2 AS INT64       NO-UNDO.
DEFINE VARIABLE IResultado AS INT64        NO-UNDO.

UPDATE Inumero1
       Inumero2.
      
   
ASSIGN 
    IResultado = (Inumero1 + Inumero2) * (Inumero1 + Inumero2).
    
DISPLAY IResultado.
