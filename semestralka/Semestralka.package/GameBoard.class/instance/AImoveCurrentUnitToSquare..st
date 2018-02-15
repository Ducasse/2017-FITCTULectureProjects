AI
AImoveCurrentUnitToSquare: moveToSquare
	| copy |
	copy := self veryDeepCopy.
	copy moveCurrentUnitToSquare:  moveToSquare .
	^copy.