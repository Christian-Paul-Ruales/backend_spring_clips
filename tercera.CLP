(deftemplate plato-recomendado3
    (slot color)
	(slot ceviche (type INTEGER))
	(slot encebollado (type INTEGER))
	(slot hornado (type INTEGER))
	(slot morada (type INTEGER))
	(slot fanesca (type INTEGER))
	(slot higos (type INTEGER))
	(slot cuy (type INTEGER))
)

(defrule tercera_pregunta
    (comida-principal ?principal)
    =>
	(if (eq ?principal curtido_dulce)
		then
			(assert (plato-recomendado3 (hornado 30)))
			)
			
			
			
	
	(if (eq ?principal no)
		then
			(assert (plato-recomendado3 (hornado 0)))
			)
	
    
)
