accessing
regenerateChildren
	self removeChildren.
	
	gameStateManager gameState options do: [ :option |
			|optionElement|
			optionElement := self newOptionElement option: option.
			optionElement addEventHandler: (self newOptionEventListener 
			gameStateManager: self gameStateManager).
			self addChild: optionElement
			]