tests
testPositions
	| pos |
	pos := LevelPos newAt: 7 @ 10 on: nil.
	self assert: (Up new + pos) point equals: 6 @ 10.
	self assert: (Right new + pos) point equals: 7 @ 11.
	self assert: (Down new + pos) point equals: 8 @ 10.
	self assert: (Left new + pos) point equals: 7 @ 9.
	self assert: (pos + Up new) point equals: 6 @ 10.
	self assert: (pos + Right new) point equals: 7 @ 11.
	self assert: (pos + Down new) point equals: 8 @ 10.
	self assert: (pos + Left new) point equals: 7 @ 9