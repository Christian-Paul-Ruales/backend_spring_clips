(deftemplate plato-recomendado9
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
	
	(if (eq ?principal bastante)
		then
			(assert (plato-recomendado9 (ceviche 30) (encebollado 28)))
			
			)
	(if (eq ?principal algo)
		then
			(assert (plato-recomendado9 (hornado 10) (fanesca 10) (cuy 5)))
			
			)
	(if (eq ?principal poco)
		then
			(assert (plato-recomendado9 (hornado 2) (fanesca 2) (cuy 2)))
			
			)
	(if (eq ?principal nada)
		then
			(assert (plato-recomendado9 (morada 20) (higos 20)))
			
			)
	
    
)
