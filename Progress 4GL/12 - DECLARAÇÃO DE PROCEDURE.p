PROCEDURE mostramensagem:
    DEFINE VARIABLE nome AS CHARACTER   NO-UNDO.
    ASSIGN nome = 'luis felipe'.
    MESSAGE nome
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
END. 

RUN mostramensagem.
