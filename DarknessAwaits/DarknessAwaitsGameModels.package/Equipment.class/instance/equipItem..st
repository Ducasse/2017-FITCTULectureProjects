initialization
equipItem: item
	(equipment at: item equipBodyPart) isNil
		ifFalse: [ (equipment at: item equipBodyPart) isEquiped: false ].
		
	item isEquiped: true.
	equipment at: item equipBodyPart put: item