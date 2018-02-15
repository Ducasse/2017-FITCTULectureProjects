copying
copyAttributesFrom: template to: instance
	
	super copyAttributesFrom: template to: instance.
	
	instance equipBodyPart:  (template equipBodyPart);
		isEquiped: false.