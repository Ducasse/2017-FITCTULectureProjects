tests
testSpellBuffDef
| a b buffDuration|

Transcript show: '-----Running buff def test.-----'.
Transcript cr.

	
a := Unit new.
b := Unit new.
a nickname: 'A'.
b nickname: 'B'.
b def: 10.
a mpwr: 5.

buffDuration := (a castSpell: BuffDef onTarget: b) + 1.
self assert: b def equals: 15.
buffDuration timesRepeat: [ self assert: b def equals: 15. b update. ].
self assert: b def equals: 10.

a mp: 2.
a castSpell: BuffDef onTarget: b.
self assert: a mp equals: 2.
self assert: b def equals: 10.
	