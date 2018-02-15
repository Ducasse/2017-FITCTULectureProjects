helper methods
getArrayOfSpells
	|spells|
	spells := OrderedCollection new.
	spells
		add: BuffAtk;
		add: BuffDef;
		add: Karma.
	^ spells.

