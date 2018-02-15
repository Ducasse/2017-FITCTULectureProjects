drawing
facingTransform: aAngle
	self model facing x = -1
		ifTrue:[	self transform
			flipY;
		 	rotateBy: aAngle;
		 	apply.
			
			]
		ifFalse:[self transform
		 	rotateBy: aAngle;
		 	apply.].