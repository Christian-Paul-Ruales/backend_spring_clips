(deftemplate plato-recomendado4
    (slot color)
	(slot ceviche (type INTEGER))
	(slot encebollado (type INTEGER))
	(slot hornado (type INTEGER))
	(slot morada (type INTEGER))
	(slot fanesca (type INTEGER))
	(slot higos (type INTEGER))
	(slot cuy (type INTEGER))
)

(defrule cuarta_pregunta
    (comida-principal ?principal)
    =>
	(if (eq ?principal pan)
		then
			(assert (plato-recomendado4 (morada 30)))
			)
			
			
			
	
	(if (eq ?principal no)
		then
			(assert (plato-recomendado4 (morada 0)))
			)
	
    
)
