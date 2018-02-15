accessing
attackersDamage: character
	|weapon|
	(character isMemberOf: Hero) ifTrue:[
	weapon := character equipment getEquipAtBodyPart: BodyPartEnum righthand].
	
	(character isMemberOf: Monster) ifTrue:[ ^ (character damage) ].
	
	weapon ifNotNil: [ 
		|damage| 
		damage := weapon damage + ((character attributes getAttributeOfType: weapon mainAttribute) / 7) asInteger .
		^ damage].
	^ ((character attributes getAttributeOfType: AttributeTypeEnum strenght) / 6) asInteger