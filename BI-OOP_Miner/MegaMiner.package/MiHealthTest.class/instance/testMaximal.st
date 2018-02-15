tests-accessing
testMaximal
	| health |
	health := MiHealth new.
	self assert: health maximal equals: 100.