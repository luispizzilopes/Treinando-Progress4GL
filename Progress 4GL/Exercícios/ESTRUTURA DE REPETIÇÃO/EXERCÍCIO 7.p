DEFINE VARIABLE notas AS DECIMAL     NO-UNDO.
DEFINE VARIABLE media AS DECIMAL     NO-UNDO.
DEFINE VARIABLE i AS INT64   NO-UNDO.
DEFINE VARIABLE alunos AS INT64       NO-UNDO.

DISP 'Informe a quantidade de alunos na sala'.
UPDATE alunos. 

DO i = 1 TO alunos:
    UPDATE notas.
    media = media + notas. 
END.

ASSIGN media = media / alunos. 

MESSAGE 'A média final da sala é' media
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
