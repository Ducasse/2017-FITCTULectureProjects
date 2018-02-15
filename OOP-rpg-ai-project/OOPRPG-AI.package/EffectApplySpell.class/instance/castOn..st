as yet unclassified
castOn: aUnit

	(super castOn: aUnit) ifFalse: [^ 0].
	aUnit addEffect: (effect withCaster: caster).
	^ Smalltalk at: #lastSkillcheck.