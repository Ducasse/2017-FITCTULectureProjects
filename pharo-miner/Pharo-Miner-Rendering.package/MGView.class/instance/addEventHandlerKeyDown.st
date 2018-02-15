event handling
addEventHandlerKeyDown
	space
		addEventHandler:
			(BlEventHandler
				on: BlKeyDownEvent
				do: [ :anEvent | self inputManager setKey: anEvent key state: KeyState down ])