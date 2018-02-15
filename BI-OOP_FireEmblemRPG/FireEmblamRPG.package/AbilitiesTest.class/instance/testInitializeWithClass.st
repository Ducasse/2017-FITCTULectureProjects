tests
testInitializeWithClass
	| abilit |
	abilit := Abilities withClass: 'Rogue'.
	self assert:((abilit abilities at: 1)value between: 0 and: 20).
	self assert:((abilit abilities at: 2)value  between: 0 and: 20).
	self assert:((abilit abilities at: 3)value  between: 0 and: 20).
	self assert:((abilit abilities at: 4)value between: 0 and: 20).
	self assert:((abilit abilities at: 5)value between: 0 and: 20).
	
	self assert: ((Abilities withClass: 'Rog') = 'Error: Unknown Rank' ).
	
	