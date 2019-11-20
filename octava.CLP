(deftemplate plato-recomendado8
    (slot color)
	(slot ceviche (type INTEGER))
	(slot encebollado (type INTEGER))
	(slot hornado (type INTEGER))
	(slot morada (type INTEGER))
	(slot fanesca (type INTEGER))
	(slot higos (type INTEGER))
	(slot cuy (type INTEGER))
)

(defrule octava_pregunta
    (comida-principal ?principal)
	
    =>
	
	(if (eq ?principal espesa)
		then
			(assert (plato-recomendado8 (morada 30) (fanesca 50)))
			
			)
	(if (eq ?principal liquida)
		then
			(assert (plato-recomendado8 (morada 30) (higos 20) (fanesca 30) (encebollado 50) (hornado 10)))
			
			)
	(if (eq ?principal bebible)
		then
			(assert (plato-recomendado8 (morada 50)))
			
			)
	(if (eq ?principal solido)
		then
			(assert (plato-recomendado8 (ceviche 38) (hornado 38) (cuy 44)))
			
			)
	
    
)
