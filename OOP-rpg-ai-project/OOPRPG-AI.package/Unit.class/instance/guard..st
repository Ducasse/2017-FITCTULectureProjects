battleActions
guard: aUnit
	| move |
	move := (Move unit: self guarded: aUnit).
	self addEffect: (GuardEffect withTarget: aUnit).
	battle ifNotNil: [ UnitResolver addMove: move. battle ui printEventNoCr: move printEvent ].