battleActions
attack: aUnit
	"comment stating purpose of message"

	| damage move |
	damage := self atk skillcheck - aUnit defend.
	damage <= 0 ifTrue: [ damage := 1 ].
	move := (Move unit: self attacked: aUnit dealing: damage).
	battle ifNotNil: [ UnitResolver addMove: move. battle ui printEventNoCr: move printEvent.].
	damage > 0 ifTrue: [ aUnit takeDamage: damage from: self. ^ damage ].
	^ 0