DEFINE VARIABLE ladoa AS INT64       NO-UNDO.
DEFINE VARIABLE ladob AS INT64       NO-UNDO.
DEFINE VARIABLE ladoc AS INT64       NO-UNDO.

UPDATE ladoa
       ladob
       ladoc.
IF (ladoa < ladob + ladoc AND ladob < ladoa + ladoc AND ladoc < ladoa + ladob) THEN
DO:
    MESSAGE 'é um triangulo'
    VIEW-AS ALERT-BOX INFORMATION.
END.
ELSE
    MESSAGE 'não é um triangulo'
    VIEW-AS ALERT-BOX INFORMATION.
