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
			(assert (plato-recomendado7 (ceviche 50) (encebollado 35)))
			)
	(if (eq ?principal yuca)
		then
			(assert (plato-recomendado7 (encebollado 50) (ceviche 15)))
			
			)
	(if (eq ?principal papa_tortilla)
		then
			(assert (plato-recomendado7 (hornado 50)))
			
			)
	(if (eq ?principal dulce)
		then
			(assert (plato-recomendado7 (morada 50) (higos 40) ))
			
			)
	(if (eq ?principal granos)
		then
			(assert (plato-recomendado7 (fanesca 60)))
			)
	(if (eq ?principal queso)
		then
			(assert (plato-recomendado7 (higos 50) (fanesca 20)))
			)
	(if (eq ?principal ppensalada)
		then
			(assert (plato-recomendado7 (cuy 50) (hornado 20)))
			)
    
)


