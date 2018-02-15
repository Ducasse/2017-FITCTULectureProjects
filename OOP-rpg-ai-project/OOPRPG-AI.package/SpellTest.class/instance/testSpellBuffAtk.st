tests
testSpellBuffAtk
| a b buffDuration|

Transcript show: '-----Running buff test.-----'.
Transcript cr.

	
a := Unit new.
b := Unit new.
a nickname: 'A'.
b nickname: 'B'.
b atk: 10.
a mpwr: 5.

buffDuration := (a castSpell: BuffAtk onTarget: b) + 1.
self assert: b atk equals: 15.
buffDuration timesRepeat: [ self assert: b atk equals: 15. b update. ].
self assert: b atk equals: 10.
	
a mp: 2.
a castSpell: BuffAtk onTarget: b.
self assert: a mp equals: 2.
self assert: b atk equals: 10.