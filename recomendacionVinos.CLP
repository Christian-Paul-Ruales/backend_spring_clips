(deftemplate vino-recomendado
    (slot color)
)

(defrule recomendar_vino-tinto
    (comida-principal carne-roja)
    =>
    (printout t "Recomiendo vino tinto" crlf)
    (assert (vino-recomendado (color tinto)))
)

(defrule recomendar_vino-blanco
    (or (comida-principal pescado)
    (comida-principal mariscos))
    =>
    (printout t "Recomiendo vino blanco" crlf)
    (assert (vino-recomendado (color blanco)))
)

(defrule recomendar_vino-rosado
    (comida-principal carne-blanca)
    =>
    (printout t "Recomiendo vino rosado" crlf)
    (assert (vino-recomendado (color rosado)))
)
