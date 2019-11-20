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
			 (assert (plato-recomendado2 (ceviche 30) (encebollado 20) (hornado 20)))
		
			)
	(if (eq ?principal cevolla_picante)
		then
			(assert (plato-recomendado2 (encebollado 30) (ceviche 30) (hornado 10)))
		
			)
	(if (eq ?principal cevolla)
		then
			(assert (plato-recomendado2 (encebollado 30) (ceviche 30) (hornado 15)))
			)
	(if (eq ?principal no)
		then
			(assert (plato-recomendado2 (encebollado 0) (ceviche 0) (hornado 0)))
			)
	
    
)
