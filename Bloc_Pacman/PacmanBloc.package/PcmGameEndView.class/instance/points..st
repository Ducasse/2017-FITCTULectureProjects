accessing
points: points
	| textModel |
	
	textModel := BrRopedText string: self messageText , ' score: ' , points asString.
	textModel attributes: {
		BrFontSizeAttribute size: 24.
		BrTextForegroundAttribute paint: Color white }.
	
	text text: textModel