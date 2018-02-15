as yet unclassified
onAttackSelected: enemyUnit
	| player deleg |
	player := self currentUnit.
	deleg := HumanAttackStep withOwner: player withTarget: enemyUnit.
	player stepDeleg: deleg.
	self onTurnSelected.