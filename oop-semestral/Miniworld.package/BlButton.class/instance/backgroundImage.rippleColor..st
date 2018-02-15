accessing
backgroundImage: anObject rippleColor: aRippleColor
	self rippleColor: aRippleColor.
	self baseColor: (aRippleColor alpha: 0).
	self background: anObject