tests
testKilledBy
| a b hpCheck|

Transcript show: '-----Running killedBy test.-----'.
Transcript cr.

	
a := Unit new.
b := Unit new.
a nickname: 'A'.
b nickname: 'B'.
b hp: 1.
a atk: 100.
[b hp > 0 ] whileTrue: [ a attack: b. b update. ].

self assert: b dead.
self assert: b killedBy == a.