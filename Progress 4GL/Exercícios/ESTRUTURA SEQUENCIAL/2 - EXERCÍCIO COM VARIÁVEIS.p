DEFINE VARIABLE i-numero AS INT64       NO-UNDO.
DEFINE VARIABLE i-nquadrado AS INT64    NO-UNDO. 
DEFINE VARIABLE i-ncubo AS INT64        NO-UNDO.

UPDATE i-numero.

ASSIGN i-nquadrado = i-numero * i-numero
       i-ncubo = i-numero * i-numero * i-numero.
 
 
DISPLAY i-nquadrado
        i-ncubo.
