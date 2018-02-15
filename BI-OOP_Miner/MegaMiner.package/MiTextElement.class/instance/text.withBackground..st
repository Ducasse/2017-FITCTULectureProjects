drawing
text: aText withBackground: aBackground	
	aText attributes: self textAttributes
		from: 1 to: aText size. "the whole text"
	textElement text: aText.
	textElement background: self getBackground