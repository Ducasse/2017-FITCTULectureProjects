as yet unclassified
castOn: aUnit
	"pays mana, and let the subclass do its stuff."
	self canCast ifFalse: [ caster logCr: 'Not enough mana to cast.' ].
	
	^ self payMana.