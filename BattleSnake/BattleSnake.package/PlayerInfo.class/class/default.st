accessing
default
	^ self new
		color: self defaultColor;
		name: self defaultName ;
		headUrl: self defaultHeadUrl ;
		headType:  self defaultHeadType ;
		tailType:  self defaultTailType ;
		taunt: self defaultTaunt ;
		secondaryColor: self defaultSecondaryColor;
		yourself