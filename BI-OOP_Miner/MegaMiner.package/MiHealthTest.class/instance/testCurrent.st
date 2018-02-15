tests-accessing
testCurrent
	| health |
	health := MiHealth new.
	health current: 50.
	self assert: health current equals: 50.
	