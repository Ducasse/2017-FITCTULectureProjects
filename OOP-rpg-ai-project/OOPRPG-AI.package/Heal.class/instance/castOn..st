as yet unclassified
castOn: aUnit
	"comment stating purpose of message"
	| heal |
	(super castOn: aUnit) ifFalse: [^ 0].
	
	heal := caster mpwr skillcheck.
	aUnit hp: (aUnit hp + heal).
	caster log: 'Healing ', aUnit nickname, ' for ', heal asString ,' hp.'