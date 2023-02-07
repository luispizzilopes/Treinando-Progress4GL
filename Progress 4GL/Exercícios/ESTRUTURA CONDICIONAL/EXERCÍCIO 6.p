DEFINE VARIABLE numero1 AS INT64       NO-UNDO.
DEFINE VARIABLE numero2 AS INT64       NO-UNDO.
DEFINE VARIABLE resultado AS INT64       NO-UNDO.

DISPLAY 'informe o valor do primeiro numero'.
UPDATE numero1.
DISPLAY 'informe o valor do segundo numero'.
UPDATE numero2.

ASSIGN resultado = numero1 + numero2.

IF resultado > 100 AND resultado MOD 2 = 0 THEN
DO:
    MESSAGE resultado / 2
    VIEW-AS ALERT-BOX INFORMATION.
END.
ELSE IF resultado < 100 AND resultado MOD 2 = 0 THEN
DO:
    MESSAGE resultado * 2
    VIEW-AS ALERT-BOX INFORMATION.   
END.
ELSE IF resultado MOD 2 <> 0 THEN
DO:
    MESSAGE resultado
    VIEW-AS ALERT-BOX INFORMATION.
END.
