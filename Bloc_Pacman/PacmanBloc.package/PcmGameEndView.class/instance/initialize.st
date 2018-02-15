initialization
initialize
	super initialize.
	self size: 480 @ 464.
	self relocate: 0 @ 0.
	self background: Color black.
	self layout: BlFrameLayout new.
	text := BlTextElement new.
	text
		constraintsDo: [ :c | 
			c frame horizontal alignCenter.
			c frame vertical alignCenter ].
	self points: 0.
	self addChild: text