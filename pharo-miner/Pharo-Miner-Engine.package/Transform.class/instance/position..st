accessing
position: aPoint
	position = aPoint ifFalse: [ changed := true ].
	position := aPoint