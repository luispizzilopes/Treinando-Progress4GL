MESSAGE 
    "Deseja apagar o registro?"
    VIEW-AS ALERT-BOX BUTTONS YES-NO-CANCEL
    TITLE "Apagar Registro." UPDATE Resposta AS LOGICAL.
    
IF Resposta = YES THEN
DO:
   MESSAGE "Voc� apagou o registro"
   VIEW-AS ALERT-BOX BUTTON OK. 
END.
IF Resposta = NO THEN
DO:
    MESSAGE "O registro foi mantido"
    VIEW-AS ALERT-BOX BUTTON OK. 
END.
IF Resposta = ? THEN
DO:
   MESSAGE "Voc� cancelou a opera��o"
   VIEW-AS ALERT-BOX BUTTON OK.
END.
