DEFINE VARIABLE vetor AS INTEGER EXTENT 10     NO-UNDO.
DEFINE VARIABLE i AS INT64       NO-UNDO.
DEFINE VARIABLE numerobusca AS INT64       NO-UNDO.
DEFINE VARIABLE posicao AS INT64       NO-UNDO.
DEFINE VARIABLE aux AS INT64       NO-UNDO.

DO i = 1 TO 10:
    MESSAGE 'informe o valor da posi��o ' i
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
  MESSAGE 'o n�mero ' numerobusca 'est� no vetor'
          'ele est� na posi��o: ' posicao
      VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
END.
ELSE IF aux = 0 THEN
DO:
  MESSAGE 'o n�mero n�o est� no vetor'
      VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
END.
