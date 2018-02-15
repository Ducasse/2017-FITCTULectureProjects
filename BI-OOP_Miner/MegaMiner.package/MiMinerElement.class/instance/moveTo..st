drawing
moveTo: aRelativePosition
	"-1 because initial position is 1@1"
	(oldRelativePosition - aRelativePosition) max abs < 2
		ifTrue: [ self translateSmoothTo: (aRelativePosition - 1) * self size ]
		ifFalse: [ self translateInstantTo: (aRelativePosition - 1) * self size ].
	oldRelativePosition := aRelativePosition 