helper methods
getArrayOfSpells
	|spells|
	spells := OrderedCollection new.
	spells
		add: Karma;
		add: Protect.
	^ spells.

