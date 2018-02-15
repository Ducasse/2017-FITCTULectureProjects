as yet unclassified
withOwner: anOwner withTarget: aTarget withSpell: aSpell
	| step |
	step := self new.
	step targetPlayer: aTarget.
	step owner: anOwner.
	step spell: aSpell.
	^ step