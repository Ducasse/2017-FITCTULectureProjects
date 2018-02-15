controlling
switchLevel
	| l |
	l := levels at: currentLevelNum + 1 ifAbsent: [ nil ].
	l isNil
		ifTrue: [ presenter presentMenu. ]
		ifFalse: [ self currentLevelById: currentLevelNum + 1 ]