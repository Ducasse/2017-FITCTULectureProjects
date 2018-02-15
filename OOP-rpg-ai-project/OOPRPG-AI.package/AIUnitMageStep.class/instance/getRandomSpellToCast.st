helper methods
getRandomSpellToCast
	|spells spell|
	spells := self getArrayOfSpells shuffled.
	
	spells do: [ :each |
		(spell isNil and: (each manacost <= ownedBy mp))
			ifTrue: [ spell:= each ].
	].		
	^spell.
