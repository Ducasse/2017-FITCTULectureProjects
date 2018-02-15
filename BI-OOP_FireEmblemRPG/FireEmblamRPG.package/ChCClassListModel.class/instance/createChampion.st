as yet unclassified
createChampion
	|champ|
	primaryButtons do: [ :button | button selected ifTrue: [ champ := self createChampionFromButton: button] ].
	self assert: champ isNotNil description: ['YOU MUST SELECT CLASS FOR EACH CHAMPION'].
	^champ
	