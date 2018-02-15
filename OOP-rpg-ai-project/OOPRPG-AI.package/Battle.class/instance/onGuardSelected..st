as yet unclassified
onGuardSelected: friend
	| player deleg |
	player := self currentUnit.
	deleg := HumanGuardStep withOwner: player withTarget: friend.
	player stepDeleg: deleg.
	self onTurnSelected