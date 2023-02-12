DEFINE VARIABLE contmasc AS INT64       NO-UNDO.
DEFINE VARIABLE contfemi AS INT64       NO-UNDO.
DEFINE VARIABLE nome AS CHARACTER   NO-UNDO.
DEFINE VARIABLE i AS INT64       NO-UNDO.
DEFINE VARIABLE sexo AS CHAR NO-UNDO. 

ASSIGN contmasc = 0
       contfemi = 0. 

DO i = 1 TO 2:
    UPDATE nome. 
    UPDATE sexo. 
    
    IF sexo = 'm' THEN
    DO:
       contmasc = contmasc + 1. 
    END.
    ELSE IF sexo = 'f' THEN
    DO:
       contfemi = contfemi + 1.  
    END.
END.

MESSAGE 'Quantidade de pessoas do sexo masculino: ' contmasc SKIP
        'Quantidade de pessoas do sexo feminino: ' contfemi
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
