initialization
setupControl
	(self getBehaviour: Controller)
		onKeyPressed: (self keybind at: 1) do: [ self moveLeft ];
		onKeyPressed: (self keybind at: 2) do: [ self moveRight ];
		onKeyPressed: (self keybind at: 3) do: [ self moveUp ];
		onKeyPressed: (self keybind at: 4) do: [ self moveDown ];
		finally: [ self updateFlying . self resetState ]