DEFINE VARIABLE preco AS DECIMAL     NO-UNDO.
DEFINE VARIABLE media AS DECIMAL     NO-UNDO.
DEFINE VARIABLE precomaior AS DECIMAL     NO-UNDO.
DEFINE VARIABLE precomenor AS DECIMAL     NO-UNDO.
DEFINE VARIABLE codigo AS CHARACTER   NO-UNDO.
DEFINE VARIABLE codigomaior AS CHARACTER   NO-UNDO.
DEFINE VARIABLE codigomenor AS CHARACTER   NO-UNDO.
DEFINE VARIABLE i AS INT64       NO-UNDO.
DEFINE VARIABLE qnt AS INT64       NO-UNDO.
DEFINE VARIABLE aux AS INT64       NO-UNDO.

ASSIGN aux = 0.

MESSAGE 'informe a quantidade de produtos que deseja cadastrar: '
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    UPDATE qnt.

DO i = 1 TO qnt:
    UPDATE preco
           codigo.
    media = media + preco. 
    
    IF preco > precomaior THEN
    DO:
       precomaior = preco.
       codigomaior = codigo. 
    END.
    
    IF aux = 0 THEN
    DO:
       precomenor = preco.
       codigomenor = codigo.
       aux = 1.
    END.
    
    IF preco < precomenor THEN
    DO:
       precomenor = preco.
       codigomenor = codigo.
    END.
END.

media = media / qnt. 

MESSAGE 'Média dos preços: ' media
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    
MESSAGE 'Maior valor: ' precomaior SKIP
        'Código: ' codigomaior
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    
MESSAGE 'Menor valor: ' precomenor SKIP
        'Código: ' codigomenor
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
