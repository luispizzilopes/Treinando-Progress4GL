DEFINE VARIABLE nota1 AS INT64       NO-UNDO.
DEFINE VARIABLE nota2 AS INT64       NO-UNDO.
DEFINE VARIABLE nota3 AS INT64       NO-UNDO.
DEFINE VARIABLE media AS INT64       NO-UNDO.

UPDATE nota1
       nota2
       nota3.
   
media = ((nota1 * 2) + (nota2 * 3) + (nota3 * 5)) / 10.

DISPLAY 'A nota final foi de: '
        media.
