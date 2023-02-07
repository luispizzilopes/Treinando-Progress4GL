DEFINE VARIABLE i-numero AS INT64       NO-UNDO.

UPDATE i-numero.

IF i-numero > 0 THEN
DO:
    MESSAGE "Maior que zero!"
    VIEW-AS ALERT-BOX INFORMATION.
END.
ELSE IF i-numero < 0 THEN
DO:
    MESSAGE "Menor que zero!"
    VIEW-AS ALERT-BOX INFORMATION.
END.
ELSE
    MESSAGE "Igual a zero!"
    VIEW-AS ALERT-BOX INFORMATION.
