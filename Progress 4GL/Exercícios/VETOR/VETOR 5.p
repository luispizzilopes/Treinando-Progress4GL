DEFINE VARIABLE vetor AS INT64 EXTENT 10    NO-UNDO.
DEFINE VARIABLE i AS INT64       NO-UNDO.
DEFINE VARIABLE negativos AS INT64       NO-UNDO.

DO i = 1 TO 10:

    UPDATE vetor[i].
    IF vetor[i] < 0 THEN
    DO:
        negativos = negativos + 1.
    END.
END.

MESSAGE 'a quantidade de números negativos informados foi' negativos
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
