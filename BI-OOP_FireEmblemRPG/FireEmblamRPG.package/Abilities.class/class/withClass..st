initialization
withClass: aClass
	| abilities |
		abilities := Abilities new.
		(aClass = 'Tank')
		ifTrue:	[ abilities createTank].
		(aClass = 'Rogue')
		ifTrue:	[ abilities createRogue].
		(aClass = 'Hunter')
		ifTrue:	[ abilities createHunter].
		(aClass = 'Mage')
		ifTrue:	[ abilities createMage].
		(aClass = 'Swordman')
		ifTrue:	[ abilities createSwordman].
		(aClass = 'Healer')
		ifTrue:	[ abilities createHealer].
		(abilities abilities = (OrderedCollection new: 5))
		ifTrue:	[ ^'Error: Unknown Rank' ].
	^abilities 