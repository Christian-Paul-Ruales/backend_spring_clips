(deftemplate plato-recomendado5
    (slot color)
	(slot ceviche (type INTEGER))
	(slot encebollado (type INTEGER))
	(slot hornado (type INTEGER))
	(slot morada (type INTEGER))
	(slot fanesca (type INTEGER))
	(slot higos (type INTEGER))
	(slot cuy (type INTEGER))
)

(defrule quinta_pregunta
    (comida-principal ?principal)
    =>
	(if (eq ?principal crema)
		then
			(assert (plato-recomendado5 (fanesca 25) (morada 15)))
			
			)
			
			
			
	
	(if (eq ?principal no)
		then
			(assert (plato-recomendado5 (fanesca 0) (morada 0)))
			)
	
    
)