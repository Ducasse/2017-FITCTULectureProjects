as yet unclassified
castOn: aUnit
	"comment stating purpose of message"
	| heal |
	aUnit == caster ifFalse: [ ^ 0 ].
	(super castOn: aUnit) ifFalse: [^ 0].
	
	heal := caster mpwr skillcheck.
	aUnit mp: (aUnit mp + heal).
	caster log: 'meditated for ', heal asString ,' mp.'