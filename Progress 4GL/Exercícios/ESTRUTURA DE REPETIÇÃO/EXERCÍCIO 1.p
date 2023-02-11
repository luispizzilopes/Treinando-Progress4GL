DEFINE VARIABLE numero AS INT64       NO-UNDO.
DEFINE VARIABLE i AS INT64       NO-UNDO.

MESSAGE "Informe o número que deseja consultar a tabuada"
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
UPDATE numero.

DO i = 1 TO 10:
MESSAGE i * numero
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
END.
