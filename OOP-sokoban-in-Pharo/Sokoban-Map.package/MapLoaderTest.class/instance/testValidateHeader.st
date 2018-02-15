tests
testValidateHeader
	mapLoader width: 5 .
	mapLoader height: 7 .
	mapLoader isSavedGame: true .
	mapLoader moves: 10 .
	self assert: (mapLoader validateHeader).
	mapLoader width: nil .
	self assert: (mapLoader validateHeader not).
