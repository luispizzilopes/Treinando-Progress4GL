DEFINE VARIABLE precomontadora AS DECIMAL     NO-UNDO.

UPDATE
    precomontadora.

DISPLAY 
    "Para o pre�o da montadora igual a: "
    precomontadora
    "O pre�o de venda � de: "
    precomontadora + precomontadora * 0.15 +
    precomontadora * 0.11 + precomontadora * 0.17
    "O valor do icms �: " precomontadora * 0.17
    "O valor do ipi �: " precomontadora * 0.11
    "O lucro � de: " precomontadora * 0.15.
