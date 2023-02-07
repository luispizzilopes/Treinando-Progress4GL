DEFINE VARIABLE numero AS INT64       NO-UNDO.
DEFINE VARIABLE numero2 AS INT64        NO-UNDO.


UPDATE
    numero
    numero2.
    
IF numero > numero2 THEN
DO:
    DISPLAY "O primeiro número é maior".    
END.
ELSE IF numero2 > numero THEN
DO:
    DISPLAY "O segundo número é maior".
END.
ELSE 
    DISPLAY "Os números são iguais". 
