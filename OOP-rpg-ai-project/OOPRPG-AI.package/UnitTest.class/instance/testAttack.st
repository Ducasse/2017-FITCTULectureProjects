tests
testAttack
| a b hpCheck|

Transcript show: '-----Running attack test.-----'.
Transcript cr.

	
a := Unit new.
b := Unit new.
a nickname: 'A'.
b nickname: 'B'.
b hp: 10.
hpCheck:=10.
a atk: 6.
[b hp > 0 ] whileTrue: [ hpCheck := hpCheck - (a attack: b). b update. self assert: ((hpCheck == b hp) or: (b hp == 0)) ].

self assert: b dead.