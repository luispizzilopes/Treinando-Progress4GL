DEFINE VARIABLE preco AS DECIMAL     NO-UNDO.
DEFINE VARIABLE media AS DECIMAL     NO-UNDO.
DEFINE VARIABLE precomaior AS DECIMAL     NO-UNDO.
DEFINE VARIABLE codigo AS CHARACTER   NO-UNDO.
DEFINE VARIABLE codigomaior AS CHARACTER   NO-UNDO.
DEFINE VARIABLE i AS INT64 NO-UNDO.

ASSIGN precomaior = 0.

DO i = 1 TO 15:
    UPDATE preco.
    UPDATE codigo.
    IF preco > precomaior THEN
    DO:
       precomaior = preco.
       codigomaior = codigo.
    END.
    media = media + preco.
END.

media = media / 15.


MESSAGE "M�dia de pre�o: " media SKIP
        "Maior pre�o: " precomaior SKIP
        "C�digo pre�o maior: " codigomaior SKIP 
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
