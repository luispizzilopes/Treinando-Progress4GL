DEFINE VARIABLE i AS INT64       NO-UNDO.
DEFINE VARIABLE numero AS INT64       NO-UNDO.
DEFINE VARIABLE soma AS INT64       NO-UNDO.

DO i = 1 TO 10:
    UPDATE numero.
    IF numero < 50 THEN
    DO:
        soma = soma + numero.     
    END.
END.

MESSAGE 'valor da soma: ' soma
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
