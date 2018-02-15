tests
testSpellStun
| a b buffDuration|

Transcript show: '-----Running stun spell test.-----'.
Transcript cr.

	
a := Unit new.
b := Unit new.
a nickname: 'A'.
b nickname: 'B'.
b ap: 2.
a mpwr: 5.

a castSpell: Stun onTarget: b.
self assert: b stunned.
b update.
self assert: b stunned not.
a mp: 2.
a castSpell: Stun onTarget: b.
self assert: b stunned not.