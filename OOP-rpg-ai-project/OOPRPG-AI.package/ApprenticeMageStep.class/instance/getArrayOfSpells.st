helper methods
getArrayOfSpells
	|spells|
	spells := OrderedCollection new.
	spells
		add: BuffAtk;
		add: Heal;
		add: Slow.
	^ spells.

