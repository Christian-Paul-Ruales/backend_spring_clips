(deftemplate plato-recomendado7
    (slot color)
	(slot ceviche (type INTEGER))
	(slot encebollado (type INTEGER))
	(slot hornado (type INTEGER))
	(slot morada (type INTEGER))
	(slot fanesca (type INTEGER))
	(slot higos (type INTEGER))
	(slot cuy (type INTEGER))
)

(defrule septima_pregunta
    (comida-principal ?principal)
    =>
	(if (eq ?principal limon)
		then
			(and (assert (plato-recomendado7 (ceviche 60)))
			(assert (plato-recomendado7 (encebollado 50)))
			)
			)
	(if (eq ?principal yuca)
		then
			(assert (plato-recomendado7 (encebollado 65)))
			(assert (plato-recomendado7 (ceviche 5)))
			
			)
	(if (eq ?principal papa_tortilla)
		then
			(assert (plato-recomendado7 (hornado 52)))
			
			)
	(if (eq ?principal dulce)
		then
			(assert (plato-recomendado7 (morada 50)))
			(assert (plato-recomendado7 (higos 40)))
			(assert (plato-recomendado7 (hornado 10)))
			)
	(if (eq ?principal granos)
		then
			(assert (plato-recomendado7 (fanesca 70)))
			)
	(if (eq ?principal queso)
		then
			(assert (plato-recomendado7 (higos 50)))
			(assert (plato-recomendado7 (fanesca 20)))
			)
	(if (eq ?principal ppensalada)
		then
			(assert (plato-recomendado7 (cuy 50)))
			(assert (plato-recomendado7 (hornado 10)))
			)
    
)


