DEFINE VARIABLE precomontadora AS DECIMAL     NO-UNDO.

UPDATE
    precomontadora.

DISPLAY 
    "Para o preço da montadora igual a: "
    precomontadora
    "O preço de venda é de: "
    precomontadora + precomontadora * 0.15 +
    precomontadora * 0.11 + precomontadora * 0.17
    "O valor do icms é: " precomontadora * 0.17
    "O valor do ipi é: " precomontadora * 0.11
    "O lucro é de: " precomontadora * 0.15.
