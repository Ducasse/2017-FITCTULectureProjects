printing
printOn: aStream
	aStream nextPutAll: 'Abilities: '.
	aStream cr.
	aStream nextPutAll: 'Attack: ' , (abilities at: 2)asString.
	aStream cr.
	aStream nextPutAll:  'Defense: ' , (abilities at: 3)asString.
	aStream cr.
	aStream nextPutAll: 'Agility: ' , (abilities at: 4)asString.
	aStream cr.
	aStream nextPutAll: 'Luck: ' , (abilities at: 5)asString.
	