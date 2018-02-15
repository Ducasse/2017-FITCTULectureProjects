drawing
translateSmoothTo: aNewPosition
	tmp := aNewPosition .
	translationAnimation isRunning
		ifTrue: [ translationAnimation stop ].
		
	self facingTransform: ( self model facing angleWith: self model direction vector ) * 180 / Float pi.
	lock := true.
	translationAnimation := BlNumberTransition new
		duration: (MiMinerMoveTime seconds);
		from: self position;
		to: aNewPosition;
		onStepDo: [ :aPosition | self relocate: aPosition ];
		onFinishedDo:[	self facingTransform: 0 . lock := false.];
		startOn: self.
