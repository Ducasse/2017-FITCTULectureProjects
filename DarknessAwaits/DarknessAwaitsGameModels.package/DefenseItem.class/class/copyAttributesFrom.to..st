copying
copyAttributesFrom: template to: instance

	super copyAttributesFrom: template to: instance.
	
	instance defense: (template defense).