as yet unclassified
withOwner: anOwner withTarget: aTarget
	| step |
	step := self new.
	step targetPlayer: aTarget.
	step owner: anOwner.
	^ step