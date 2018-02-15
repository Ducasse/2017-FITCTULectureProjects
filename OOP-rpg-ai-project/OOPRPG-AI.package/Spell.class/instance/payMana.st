as yet unclassified
payMana
	"comment stating purpose of message"
	self canCast ifFalse: [ ^ false ].
		
	caster mp: caster mp - self class manacost.
	^ true.