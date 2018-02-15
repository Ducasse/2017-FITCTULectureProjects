testing
isTeamDead: aNumber
	| team |
	((aNumber < 1) or: (aNumber > 2)) ifTrue: [ ^ true ].
	aNumber == 1 ifTrue: [team := team1 ].
   aNumber == 2 ifTrue: [team := team2 ].
	
	((team count: [ :unit | unit dead ]) == team size) ifTrue: [ ^true ].
	^false.