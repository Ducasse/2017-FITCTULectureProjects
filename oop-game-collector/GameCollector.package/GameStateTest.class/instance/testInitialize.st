tests
testInitialize
	|state|
	state := GameState new.
	^ self assert: state isOwned.