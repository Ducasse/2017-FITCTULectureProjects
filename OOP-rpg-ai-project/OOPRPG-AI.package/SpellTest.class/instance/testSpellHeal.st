tests
testSpellHeal
| a b |

Transcript show: '-----Running heal test.-----'.
Transcript cr.

	
a := Unit new.
b := Unit new.
a nickname: 'A'.
b nickname: 'B'.
b hp: 10.
a mp: 5.
a mpwr: 10.
a castSpell: Heal onTarget: b. 
self assert: a mp equals: 0.
self assert: b hp equals: (10 + (Smalltalk at: #lastSkillcheck)).
b hp: 10.
a mp: 4.
a castSpell: Heal onTarget: b. 
self assert: a mp equals: 4.
self assert: b hp equals: (10).	