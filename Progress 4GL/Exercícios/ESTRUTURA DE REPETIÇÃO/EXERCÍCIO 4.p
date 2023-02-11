DEFINE VARIABLE numero AS INT64       NO-UNDO.
DEFINE VARIABLE i AS INT64       NO-UNDO.

DISP 'Informe o número: '. 

UPDATE numero.
ASSIGN i = 1. 

DO WHILE i <= numero:
    IF i MOD 2 <> 0 THEN
    DO:
       MESSAGE i
           VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    END.
    i = i + 1. 
END.
