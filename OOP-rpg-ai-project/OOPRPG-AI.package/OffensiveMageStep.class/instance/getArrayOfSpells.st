helper methods
getArrayOfSpells
	|spells|
	spells := OrderedCollection new.
	spells
		add: Poison;
		add: Stun;
		add: Slow.
	^ spells.

