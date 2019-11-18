(deftemplate plato-recomendado
    (slot color)
)

(defrule recomendar_ceviche
    or (comida-principal pescado_fresco)
    (comida-principal mariscos))
	(aderitivo cevolla_curtida)
	(acompanado curtido)
    =>
    (printout t "Recomiendo ceviche" crlf)
    (assert (plato-recomendado (color ceviche)))
)

(defrule recomendar_encebollado
    (comida-principal pescado_fresco)
	(aderitivo cevolla_picante)
	(acompanado yuca)
    =>
    (printout t "Recomiendo encebollado" crlf)
    (assert (plato-recomendado (color encebollado)))
)

(defrule recomendar_hornado
    (comida-principal carne_cerdo)
	(aderitivo cevolla_picante)
	(acompanado curtido_dulce)
    =>
    (printout t "Recomiendo hornado" crlf)
    (assert (plato-recomendado (color hornado)))
)
(defrule recomendar_morada
    (comida-principal frutas)
	(aderitivo pan)
	(acompanado dulce)
    =>
    (printout t "Recomiendo hornado" crlf)
    (assert (plato-recomendado (color hornado)))
)
(defrule recomendar_fanesca
    (comida-principal bacalo)
	(aderitivo crema)
	(acompanado granos_tiernos)
    =>
    (printout t "Recomiendo hornado" crlf)
    (assert (plato-recomendado (color hornado)))
)
(defrule recomendar_higos
    (comida-principal higos)
	(aderitivo dulce)
	(acompanado queso)
    =>
    (printout t "Recomiendo hornado" crlf)
    (assert (plato-recomendado (color hornado)))
)
(defrule recomendar_cuy
    (comida-principal carne_baja_grasa)
	(aderitivo proteinas)
	(acompanado papas_ensalada)
    =>
    (printout t "Recomiendo hornado" crlf)
    (assert (plato-recomendado (color hornado)))
)


