positioning
refreshPosition
	self relocate:
			(self position
				interpolateTo: self newPosition
				at: self camera speed)