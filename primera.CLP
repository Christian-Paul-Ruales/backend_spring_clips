(deftemplate plato-recomendado
    (slot color)
	(slot ceviche (type INTEGER))
	(slot encebollado (type INTEGER))
	(slot hornado (type INTEGER))
	(slot morada (type INTEGER))
	(slot fanesca (type INTEGER))
	(slot higos (type INTEGER))
	(slot cuy (type INTEGER))
)

(defrule primera_pregunta
    (comida-principal ?principal)
	
    =>
	
	(if (eq ?principal pescado_fresco)
		then
			(assert (plato-recomendado (ceviche 50) (encebollado 50)))
			
			)
	(if (eq ?principal mariscos)
		then
			(assert (plato-recomendado (ceviche 50) (encebollado 25)))
			
			)
	(if (eq ?principal carne_cerdo)
		then
			(assert (plato-recomendado (hornado 50)))
			
			)
	(if (eq ?principal frutas)
		then
			(assert (plato-recomendado (morada 50) (higos 20)))
			
			)
	(if (eq ?principal bacalo)
		then
			(assert (plato-recomendado (fanesca 50) (encebollado 10)))
			)
	(if (eq ?principal dulces)
		then
			(assert (plato-recomendado (higos 50) (morada 35)))
			)
	(if (eq ?principal carne_baja_grasa)
		then
			(assert (plato-recomendado (cuy 50) (encebollado 40) (ceviche 30)))
			
			)
    
)


