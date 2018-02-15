updating
manageEnemySpellcast: aGUnit move: aMove

((aMove spell) == FirstAid)  ifTrue: [  
	aGUnit changeMPts: 1.
	aGUnit changeHPts: -1.
	aGUnit changeTPts: 1.
	aGUnit changeDPts: 1.
] ifFalse: [ 
	LastSpellcaster := aGUnit.
	((aMove spell) == Meditate)  ifTrue: [ 
		self manageEnemyCaster: aGUnit move: aMove.
	] ifFalse: [  
	((aMove spell) == Karma)  ifTrue: [ 
		self manageEnemyMage: aGUnit move: aMove.
	] ifFalse: [  
	((aMove spell) == Poison )  ifTrue: [ 
		self manageEnemyMage: aGUnit move: aMove.
	] ifFalse: [  
	((aMove spell) == Slow)  ifTrue: [ 
		self manageEnemyMage: aGUnit move: aMove.
	] ifFalse: [  
	((aMove spell) == Stun)  ifTrue: [ 
		self manageEnemyMage: aGUnit move: aMove.
	] ifFalse: [
		self manageEnemyHealer: aGUnit move: aMove. 
	]]]]]
]
