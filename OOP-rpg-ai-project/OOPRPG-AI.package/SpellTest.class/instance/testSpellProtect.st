tests
testSpellProtect
"Jo uz to funguje jak ma."

	| a b c hpCheck|

	Transcript show: '-----Running Protect test.-----'.
Transcript cr.

a := Unit new.
b := Unit new.
c := Unit new.
a nickname: 'A'.
b nickname: 'B'.
c nickname: 'C'.
b hp: 10.
c hp: 10.
c castSpell: Protect onTarget: b. 
a atk: 10.
b def: 2.
hpCheck := a attack: b. 
b update. c update.
self assert: b hp equals: 10.
self assert: c hp equals: (10 - hpCheck).

hpCheck := a attack: b. 
b update. c update.
self assert: b hp equals: (10 - hpCheck).