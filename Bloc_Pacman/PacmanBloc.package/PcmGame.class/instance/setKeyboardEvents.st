initialization
setKeyboardEvents
	space
		addEventHandler:
			(BlEventHandler
				on: BlKeyDownEvent
				do: [ :anEvent | 
					anEvent key = Key arrowDown
						ifTrue: [ pacman directionChangeRequest: PcmDir down ].
					anEvent key = Key arrowUp
						ifTrue: [ pacman directionChangeRequest: PcmDir up ].
					anEvent key = Key arrowRight
						ifTrue: [ pacman directionChangeRequest: PcmDir right ].
					anEvent key = Key arrowLeft
						ifTrue: [ pacman directionChangeRequest: PcmDir left ].
					anEvent key = Key escape
						ifTrue: [ ticker stop ] ])