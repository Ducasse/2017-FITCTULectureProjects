tests
testMoveToMe
	| i |
	i := SRTWall new.
	self
		assert:
			(i moveToMe = 1)