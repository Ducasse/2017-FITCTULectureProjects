initialization
printOn: stream
	| string |
	string := 'Name: ',
				 self name, String cr,
				 'Health: ', self health asString, String cr,
				 'Attack range: ', self attackRange asString, String cr,
				 'Movement speed: ', self movementSpeed asString, String cr,
				 self attributes printString.
	stream nextPutAll: string.