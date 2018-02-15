tests
testInitialize
	|genre|
	genre := GameGenre new.
	^ self assert: genre isOther.