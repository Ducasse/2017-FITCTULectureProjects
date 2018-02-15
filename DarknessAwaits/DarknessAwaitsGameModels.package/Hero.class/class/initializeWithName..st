initialization
initializeWithName: characterName
	|instance|
	instance := Hero new.
	instance name: characterName.
	
	^ instance. 