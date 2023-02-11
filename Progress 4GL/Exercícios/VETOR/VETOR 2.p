DEFINE VARIABLE vetor AS INTEGER EXTENT 10     NO-UNDO.
DEFINE VARIABLE i AS INT64       NO-UNDO.
DEFINE VARIABLE numerobusca AS INT64       NO-UNDO.
DEFINE VARIABLE posicao AS INT64       NO-UNDO.
DEFINE VARIABLE aux AS INT64       NO-UNDO.

DO i = 1 TO 10:
    MESSAGE 'informe o valor da posição ' i
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    UPDATE vetor[i]. 
END.

MESSAGE 'informe o valor que deseja verificar'
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
UPDATE numerobusca. 

DO i = 1 TO 10:
    IF numerobusca = vetor[i] THEN
    DO:
       ASSIGN aux = 1
              posicao = i.  
    END.
END.

IF aux = 1 THEN
DO:
  MESSAGE 'o número ' numerobusca 'está no vetor'
          'ele está na posição: ' posicao
      VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
END.
ELSE IF aux = 0 THEN
DO:
  MESSAGE 'o número não está no vetor'
      VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
END.
