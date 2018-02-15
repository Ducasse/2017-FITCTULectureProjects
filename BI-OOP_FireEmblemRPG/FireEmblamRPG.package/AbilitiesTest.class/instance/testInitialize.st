tests
testInitialize
	| abilit |
	abilit := Abilities new.
	self assert:(abilit abilities = (OrderedCollection new: 5)).