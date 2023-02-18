DEFINE VARIABLE vetora AS INT64 EXTENT    NO-UNDO.
DEFINE VARIABLE vetorb AS INT64 EXTENT    NO-UNDO.
DEFINE VARIABLE vetorc AS INT64 EXTENT    NO-UNDO.
DEFINE VARIABLE i AS INT64       NO-UNDO.

MESSAGE 'informe os valores do vetor a'
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
DO i = 1 TO 10:
    UPDATE vetora[i].
END.


MESSAGE 'informe os valores do vetor b'
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
DO i = 1 TO 10:
    UPDATE vetorb[i].
END.

DO i = 1 TO 10:
    vetorc[i] = vetora[i] + vetorb[i].
    MESSAGE vetorc[i]
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
END.
