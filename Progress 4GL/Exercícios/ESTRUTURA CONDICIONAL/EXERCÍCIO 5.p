DEFINE VARIABLE valor AS DECIMAL     NO-UNDO.
DEFINE VARIABLE cotacao_dolar AS DECIMAL     NO-UNDO.
DEFINE VARIABLE resultadofinal AS DECIMAL     NO-UNDO.
DEFINE VARIABLE opc AS INT64       NO-UNDO.

DISPLAY "informe um valor".
UPDATE valor.
DISPLAY "Este valor est� em dolar(0) ou real(1)".
UPDATE opc.
DISPLAY "Informe a cota��o do dolar".
UPDATE cotacao_dolar.

IF opc = 0 THEN
DO:
    resultadofinal = valor * cotacao_dolar.
    MESSAGE 'para o valor de'
            valor 'em dolares'
            'o valor em reais � de: '
            resultadofinal
            VIEW-AS ALERT-BOX INFORMATION.
END.
ELSE
    resultadofinal = valor / cotacao_dolar.
    MESSAGE 'para o valor de'
            valor 'em reais'
            'o valor em dolares � de: '
            resultadofinal
            VIEW-AS ALERT-BOX INFORMATION.
