factory
makeAlgorithmButton: aType position: aPosition
	^ (BlButtonFactory selectableRippleWithText: aType asString)
		addOnClick: [ :e | 
			algorithm := aType new.
			algorithm tilemap: grid.
			self reset ];
		rippleColor: (Color green alpha: 0.5);
		relocate: aPosition