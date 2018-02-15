tests
testLevelUp
	| abilit AB1 AB2 AB3 AB4 AB5|
	abilit := Abilities withClass: 'Rogue'.
	AB1 := abilit health.
	AB2 := abilit attack.
	AB3 := abilit defense.
	AB4 := abilit agility.
	AB5 := abilit luck.
	abilit levelUp.
	self assert:((abilit health) >= AB1).
	self assert:((abilit attack) >= AB2).
	self assert:((abilit defense)>= AB3).
	self assert:((abilit agility) > AB4).
	self assert:((abilit luck) >= AB5).
	
	