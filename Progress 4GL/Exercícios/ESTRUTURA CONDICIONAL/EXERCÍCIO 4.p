DEFINE VARIABLE i-numero1 AS INT64       NO-UNDO.
DEFINE VARIABLE i-numero2 AS INT64       NO-UNDO.

UPDATE i-numero1
       i-numero2.
       
IF i-numero1 > i-numero2 THEN
DO:
    MESSAGE "O primeiro n�mero informado � maior"
    VIEW-AS ALERT-BOX INFORMATION.
END.
ELSE IF i-numero1 < i-numero2 THEN
DO:
    MESSAGE "O segundo n�mero informado � maior"
    VIEW-AS ALERT-BOX INFORMATION.
END.
ELSE
    MESSAGE "O valores s�o iguais"
    VIEW-AS ALERT-BOX INFORMATION.
