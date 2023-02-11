DEFINE VARIABLE vetor AS INTEGER EXTENT 20     NO-UNDO.
DEFINE VARIABLE maiornumero AS INT64       NO-UNDO.
DEFINE VARIABLE posicao AS INT64       NO-UNDO.
DEFINE VARIABLE i AS INT64       NO-UNDO.

ASSIGN maiornumero = 0. 

DO i = 1 TO 20:
    UPDATE vetor[i].
    IF vetor[i] > maiornumero THEN
    DO:
      maiornumero = vetor[i]. 
      posicao = i. 
    END.
END.

MESSAGE 'o maior número desse vetor é: ' maiornumero
        'e sua posição é: ' posicao
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
