drawing
redraw
	|text|
	text := (BrRopedText string: self prepareText).
	text := self colorizeText: text.
	self text: text withBackground: self getBackground