interaction
checkIntegrity
	(self health current <= 0 ) | (self components tank fuelAmount <= 0)
		ifTrue: [ self restore. ^ false ].
	^ true