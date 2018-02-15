tests
testAccessing
	| abilit |
	abilit := Abilities new.
	abilit abilities: 'pepek'.
	self assert:(abilit abilities = 'pepek').