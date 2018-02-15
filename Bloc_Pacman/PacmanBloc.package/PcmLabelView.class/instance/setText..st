initialization
setText: aText
	| textModel |
	textModel := BrRopedText string: aText .
	textModel
		attributes:
			{(BrFontSizeAttribute size: 24).
			(BrTextForegroundAttribute paint: Color white)}.
	text text: textModel