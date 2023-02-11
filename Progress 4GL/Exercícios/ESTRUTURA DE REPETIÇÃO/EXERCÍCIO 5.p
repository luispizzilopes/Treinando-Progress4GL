DEFINE VARIABLE numero AS INT64       NO-UNDO.
DEFINE VARIABLE i AS INT64       NO-UNDO.
DEFINE VARIABLE cont AS INT64       NO-UNDO.

DO i = 1 TO 10:
    UPDATE numero.
    IF numero < 0 THEN
    DO:
       cont = cont + 1.  
    END.
END.

MESSAGE 'Quantidade de valores negativos' cont
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
