tests
testAbilityAccessing
	| abilit |
	abilit := Abilities withClass: 'Rogue'.
	self assert:((abilit health) between: 0 and: 20).
	self assert:((abilit attack) between: 0 and: 20).
	self assert:((abilit defense)between: 0 and: 20).
	self assert:((abilit agility) between: 0 and: 20).
	self assert:((abilit luck) between: 0 and: 20).
	
	self assert: ((Abilities withClass: 'Rog') = 'Error: Unknown Rank' ).
	
	