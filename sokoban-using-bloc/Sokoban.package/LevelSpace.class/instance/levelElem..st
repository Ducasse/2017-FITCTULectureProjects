accessing
levelElem: aLevelElem
	levelElem := aLevelElem.
	self root addChild: levelElem.
	
	levelElem relocate: ((self extent - levelElem displaySize) / 2) floor.
	self
		addEventHandler:
			(BlEventHandler
				on: BlKeyUpEvent
				do: [ :evt | self handleKeyUpEvent: evt ])