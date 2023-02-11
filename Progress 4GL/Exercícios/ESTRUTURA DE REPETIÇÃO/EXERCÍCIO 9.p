DEFINE VARIABLE numero1 AS INT64       NO-UNDO.
DEFINE VARIABLE numero2 AS INT64       NO-UNDO.
DEFINE VARIABLE soma AS INT64       NO-UNDO.
DEFINE VARIABLE i AS INT64       NO-UNDO.

UPDATE numero1
       numero2. 

DO i = numero1 TO numero2:
    soma = soma + i. 
END.
   
MESSAGE 'valor da soma é igual: ' soma
    VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
