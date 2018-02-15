event handling
addEventHandlerKeyUp
	space
		addEventHandler:
			(BlEventHandler
				on: BlKeyUpEvent
				do: [ :anEvent | self inputManager setKey: anEvent key state: KeyState up ])