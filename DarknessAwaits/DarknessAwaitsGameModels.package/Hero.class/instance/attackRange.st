initialization
attackRange
	| equipedWeapon |
	equipedWeapon := equipment getEquipAtBodyPart: BodyPartEnum righthand.
	equipedWeapon ifNotNil: [ ^ equipedWeapon attackRange  ].
	^ 1