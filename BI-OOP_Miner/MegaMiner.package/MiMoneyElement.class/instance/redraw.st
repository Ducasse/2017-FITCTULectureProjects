drawing
redraw
	|money|
	money := model money.
	money > 99999
		ifTrue: [ money := 99999 ].
	
	self
		createText: ((money printStringBase: 10 nDigits: 5) asString, ' $')
		withBackground: self getBackground