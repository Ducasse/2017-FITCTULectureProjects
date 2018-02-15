accessing
backgroundColor: aColor
	| rColor |
	rColor := aColor brightness > 0.5
		ifTrue: [ aColor adjustBrightness: -0.4 ]
		ifFalse: [ aColor adjustBrightness: 0.4 ].
	self backgroundColor: aColor rippleColor: (rColor alpha: 0.5)