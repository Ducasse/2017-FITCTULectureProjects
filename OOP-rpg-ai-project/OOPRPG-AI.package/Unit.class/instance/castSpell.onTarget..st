battleActions
castSpell: aSpellClass onTarget: aUnit
	"comment stating purpose of message"

	| spell move |
	spell := aSpellClass withCaster: self.
	move := (Move unit: self cast: aSpellClass on: aUnit).
	battle ifNotNil: [ UnitResolver addMove: move. battle ui printEventNoCr: move printEvent. ].
	^ spell castOn: aUnit.