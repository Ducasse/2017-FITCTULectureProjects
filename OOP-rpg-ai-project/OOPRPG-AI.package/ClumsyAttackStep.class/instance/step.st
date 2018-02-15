stepping and presenter
step
	|roll|
	roll := (1 to: 3) atRandom.
	(roll == 1)
		ifTrue: [ ownedBy attack: ownedBy]
		ifFalse: [ ownedBy attack: self getRandomEnemy].