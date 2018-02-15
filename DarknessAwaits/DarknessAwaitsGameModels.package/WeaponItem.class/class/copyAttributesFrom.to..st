copying
copyAttributesFrom: template to: instance
	
	super copyAttributesFrom: template to: instance.
	
	instance damage: (template damage);
		mainAttribute: (template mainAttribute);
		weaponType: (template weaponType);
		attackRange: (template attackRange).