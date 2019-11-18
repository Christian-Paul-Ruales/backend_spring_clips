(deftemplate plato-recomendado
    (slot color)
	(slot puntaje_princ (type INTEGER))
	(slot puntaje_aderi (type INTEGER))
	(slot puntaje_acomp (type INTEGER))
	(slot puntaje_plato (type INTEGER))
)

(defrule recomendar_ceviche
    (comida-principal ?principal)
	(aderitivo ?aderi)
	(acompanado ?acomp)
	(acompanado ?acomp)
	
    =>
	(assert (plato-recomendado (puntaje_plato 0)))
	(assert (plato-recomendado ))
	(assert (plato-recomendado ))
	(assert (plato-recomendado (puntaje_acomp 0)))
	
	(if (or (eq ?principal pescado_fresco)
			(eq ?principal mariscos)) 
		then
			(assert (plato-recomendado (puntaje_plato 50)))
		else
			(if (eq ?principal carne_baja_grasa)
				then
					(assert (plato-recomendado (puntaje_princ 25)))
				else
					(assert (plato-recomendado (puntaje_princ 0)))
		
				
				)
			)
	(if (or (eq ?aderi cevolla)
			(eq ?aderi cevolla_curtida)) 
		then
			(assert (plato-recomendado (puntaje_aderi 20)))
		else
			(if (eq ?aderi cevolla_picante)
				then
					(assert (plato-recomendado (puntaje_aderi 15)))
				else
					(assert (plato-recomendado (puntaje_aderi 0)))
		
				
				)
			)
			
	(if (eq ?acomp limon)
 
		then
			(assert (plato-recomendado (puntaje_acomp 30)))
		else
			(if (eq ?aderi yuca)
				then
					(assert (plato-recomendado (puntaje_acomp 15)))
				else
					(assert (plato-recomendado (puntaje_acomp 0)))
		
				
				)
			)
	


    
)


(defrule recomendar_encebollado
    (comida-principal pescado_fresco)
	(aderitivo limon)
	(acompanado yuca)
    =>
    (printout t "Recomiendo encebollado" crlf)
    (assert (plato-recomendado (color encebollado)))
)

(defrule recomendar_hornado
    (comida-principal carne_cerdo)
	(aderitivo curtido_dulce)
	(acompanado papa_tortilla)
    =>
    (printout t "Recomiendo hornado" crlf)
    (assert (plato-recomendado (color hornado)))
)
(defrule recomendar_morada
    (comida-principal frutas)
	(aderitivo pan)
	(acompanado dulce)
    =>
    (printout t "Recomiendo morada" crlf)
    (assert (plato-recomendado (color colada_morada)))
)
(defrule recomendar_fanesca
    (comida-principal bacalo)
	(aderitivo crema)
	(acompanado granos_tiernos)
    =>
    (printout t "Recomiendo fanesca" crlf)
    (assert (plato-recomendado (color fanesca)))
)
(defrule recomendar_higos
    (comida-principal higos)
	(aderitivo dulce)
	(acompanado queso)
    =>
    (printout t "Recomiendo higos" crlf)
    (assert (plato-recomendado (color higos)))
)
(defrule recomendar_cuy
    (comida-principal carne_baja_grasa)
	(aderitivo proteinas)
	(acompanado papas_ensalada)
    =>
    (printout t "Recomiendo Cuy" crlf)
    (assert (plato-recomendado (color cuy)))
)