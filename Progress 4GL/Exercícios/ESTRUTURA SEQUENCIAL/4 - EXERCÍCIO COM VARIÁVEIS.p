DEFINE VARIABLE i-tempototal AS INT64      NO-UNDO.
DEFINE VARIABLE i-hrs AS INT64       NO-UNDO.
DEFINE VARIABLE i-min AS INT64       NO-UNDO.
DEFINE VARIABLE i-seg AS INT64       NO-UNDO.


DISPLAY "Informe o tempo total de um evento em segundos: ".

UPDATE 
    i-tempototal.
    
ASSIGN 
    i-hrs = i-tempototal / 3600
    i-min = (i-tempototal MOD 3600) / 60
    i-seg = i-tempototal MOD 3600 MOD 60.
    
DISPLAY i-hrs
        i-min
        i-seg.
