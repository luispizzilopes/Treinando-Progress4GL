DEFINE VARIABLE i AS INT64       NO-UNDO.
DEFINE VARIABLE numero AS INT64       NO-UNDO.

DISPLAY 'Informe o valor do número que deseja consultar os anteriores'. 

UPDATE numero. 

DO WHILE i < numero:
    MESSAGE i
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    i = i + 1. 
END.
