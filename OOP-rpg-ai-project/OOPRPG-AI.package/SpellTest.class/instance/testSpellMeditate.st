tests
testSpellMeditate
| a b |

Transcript show: '-----Running mditate test.-----'.
Transcript cr.

	
a := Unit new.
b := Unit new.
a nickname: 'A'.
b nickname: 'B'..
a mp: 0.
a mpwr: 10.
a castSpell: Meditate onTarget: a.
self assert: a mp equals: ((Smalltalk at: #lastSkillcheck)).
a mp: 4.
b mp: 4.
a castSpell: Meditate onTarget: b. 
self assert: b mp equals: 4.
self assert: a mp equals: 4.	