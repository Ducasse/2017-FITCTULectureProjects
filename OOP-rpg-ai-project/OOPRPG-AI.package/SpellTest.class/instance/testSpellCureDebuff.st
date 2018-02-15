tests
testSpellCureDebuff
| a b buffDuration|

Transcript show: '-----Running Cure Debuff Spell test.-----'.
Transcript cr.

	
a := Unit new.
b := Unit new.
a nickname: 'A'.
b nickname: 'B'.
b ap: 2.
a mpwr: 5.
a mp: 20.
a castSpell: Slow onTarget: b.
a castSpell: BuffAtk onTarget: b.
a castSpell: Stun onTarget: b.
a mp: 20.
self assert: b effects size equals: 3.
a castSpell: CureDebuff onTarget: b.
self assert: b effects size equals: 1.

a mp: 20.
a castSpell: BuffAtk onTarget: b.
a mp: 20.
self assert: b effects size equals: 2.
a castSpell: CureDebuff onTarget: b.
self assert: b effects size equals: 2.

a mp:20.
a castSpell: Slow onTarget: b.
a mp:1.
self assert: b effects size equals: 3.
a castSpell: CureDebuff onTarget: b.
self assert: b effects size equals: 3.