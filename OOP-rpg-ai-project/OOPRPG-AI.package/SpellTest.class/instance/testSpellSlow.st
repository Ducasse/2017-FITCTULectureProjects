tests
testSpellSlow
| a b buffDuration|

Transcript show: '-----Running slow spell test.-----'.
Transcript cr.

	
a := Unit new.
b := Unit new.
a nickname: 'A'.
b nickname: 'B'.
b ap: 2.
a mpwr: 5.

buffDuration := (a castSpell: Slow onTarget: b) + 1.
self assert: b ap equals: 1.
buffDuration timesRepeat: [ self assert: b ap equals: 1. b update. ].
self assert: b ap equals: 2.

a mp: 2.
a castSpell: Slow onTarget: b.
self assert: a mp equals: 2.
self assert: b ap equals: 2.