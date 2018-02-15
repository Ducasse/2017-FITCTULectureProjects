selfActions
die
	"comment stating purpose of message"
	diedAlready ifTrue: [ self error: 'Trying to die a unit for second time...' ].
	hp := 0.
	effects do: [ :each | each remove. ].
	battle notNil ifTrue: [battle unitDied: self].
	diedAlready := true.
	^ self.