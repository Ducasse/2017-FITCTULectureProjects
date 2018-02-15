tests-accessing
testInitialize
	| health |
	health := MiHealth new.
	self assert: health current equals: health maximal.