stepping and presenter
step
	|target|
	target := UnitResolver uniqueInstance getLastSpellcaster.

	(target isNil)
		ifFalse: [ownedBy attack: target ]
	 	ifTrue: [ ownedBy attack: self getRandomEnemy].