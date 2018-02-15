tests
testGame
	| game games  |
	game := STONTestUser dummy.
	self serializeAndMaterialize: game.
	games := STON listClass streamContents: [ :stream |
		10 timesRepeat: [ stream nextPut: STONTestUser dummy ] ].
	self serializeAndMaterialize: games.
	games := STON mapClass new.
	10 timesRepeat: [ | newUser |
		newUser := STONTestUser dummy.
		games at: newUser username put: newUser ].
	self serializeAndMaterialize: games.