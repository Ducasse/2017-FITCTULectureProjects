getSet
getMonsterClone: aID
	^((monsters at: (aID)) veryDeepCopy)