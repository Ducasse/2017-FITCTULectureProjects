tests-accessing
testRestore
| health |
	health := MiHealth new.
	health damage: 50.
	self assert: health current  equals: 50.
	health restore. 
	self assert: health current  equals: 100.
	