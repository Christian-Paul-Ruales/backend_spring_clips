(deftemplate plato-recomendado6
    (slot color)
	(slot ceviche (type INTEGER))
	(slot encebollado (type INTEGER))
	(slot hornado (type INTEGER))
	(slot morada (type INTEGER))
	(slot fanesca (type INTEGER))
	(slot higos (type INTEGER))
	(slot cuy (type INTEGER))
)

(defrule sexta_pregunta
    (comida-principal ?principal)
    =>
	(if (eq ?principal proteinas)
		then
			(assert (plato-recomendado6 (cuy 50) (encebollado 35) (ceviche 25) (hornado 12)))
			)
	
		
	(if (eq ?principal no)
		then
			(assert (plato-recomendado6 (cuy 0) (encebollado 0) (ceviche 0) (hornado 0)))
			)
)