as yet unclassified
onCastSpell: aSpell to: aTarget
	| player deleg |
	player := self currentUnit.
	deleg := HumanCastSpellStep withOwner: player withTarget: aTarget withSpell: aSpell.
	player stepDeleg: deleg.
	self onTurnSelected