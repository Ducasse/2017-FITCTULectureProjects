initialization
initialize
	super initialize.
	self size: 80 @ 24.
	self background: Color black.
	self layout: BlFrameLayout new.
	text := BlTextElement new.
	text
		constraintsDo: [ :c | 
			c frame horizontal alignLeft.
			c frame vertical alignCenter ].
	self setText: 'Score: '.
	self addChild: text