(deftemplate plato-recomendado2
    (slot color)
	(slot ceviche (type INTEGER))
	(slot encebollado (type INTEGER))
	(slot hornado (type INTEGER))
	(slot morada (type INTEGER))
	(slot fanesca (type INTEGER))
	(slot higos (type INTEGER))
	(slot cuy (type INTEGER))
)

(defrule segunda_pregunta
    (comida-principal ?principal)
    =>
	(if (eq ?principal cevolla_curtida)
		then
			(and (assert (plato-recomendado2 (ceviche 50)))
			(assert (plato-recomendado2 (encebollado 30)))
			)
			
			
			)
	(if (eq ?principal cevolla_picante)
		then
			(assert (plato-recomendado2 (encebollado 50)))
			(assert (plato-recomendado2 (ceviche 50)))
		
			)
	(if (eq ?principal cevolla)
		then
			(assert (plato-recomendado2 (encebollado 50)))
			(assert (plato-recomendado2 (ceviche 50)))
			)
	(if (eq ?principal no)
		then
			(assert (plato-recomendado2 (encebollado 0)))
			(assert (plato-recomendado2 (ceviche 0)))
			)
	
    
)
