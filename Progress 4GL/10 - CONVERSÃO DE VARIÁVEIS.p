
DEFINE VARIABLE c-nome-1 AS CHARACTER   NO-UNDO.
DEFINE VARIABLE c-nome-2 AS CHARACTER   NO-UNDO.

DEFINE VARIABLE i-valor-1 AS INT       NO-UNDO.
DEFINE VARIABLE i-valor-2 AS INT       NO-UNDO.

DEFINE VARIABLE d-custo-1 AS DECIMAL     NO-UNDO.
DEFINE VARIABLE d-custo-2 AS DECIMAL     NO-UNDO.

ASSIGN
    c-nome-1 = '123'.
    c-nome-2 = 'Luis Felipe'.

    i-valor-1 = 10.
    i-valor-2 = 33.

    d-custo-1 = 10.
    d-custo-2 = 20.33.


DISPLAY 
    INTEGER(c-nome-1).
