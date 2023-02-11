DEFINE VARIABLE notas AS DECIMAL     NO-UNDO.
DEFINE VARIABLE i AS INT64       NO-UNDO.
DEFINE VARIABLE media AS DECIMAL     NO-UNDO.

//ler 10 notas
DO i = 1 TO 10:
    UPDATE notas.
    media = media + notas.
END.

MESSAGE 'Média total da sala: ' media / 10
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
