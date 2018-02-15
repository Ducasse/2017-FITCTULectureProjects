as yet unclassified
castOn: aUnit
   target:= aUnit.
	(super castOn: aUnit) ifFalse: [^ 0].
	caster addEffect: (effect withTarget: target).
	^ Smalltalk at: #lastSkillcheck.