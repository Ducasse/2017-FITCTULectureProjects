initialization
drawCharacterInfo
	| aText aLineIterator theWords |
	self removeChildren.
	theWords := OrderedCollection new.

	aText := BrRopedText string: (tileCharInfo gameCharacter printString).
	aText attributes: { BrFontSizeAttribute size: 15 }.
	aLineIterator := aText iterator.

	[ aLineIterator hasNext ] whileTrue: [ 
		| aLine aWordIterator aBreak |
		aLine := aLineIterator nextLine.
		aWordIterator := aLine iterator.
		aBreak := true.
		[ aWordIterator hasNext ] whileTrue: [ 
			| aWord |
			aWord := aWordIterator nextWord.
			theWords add: (BlTextElement new
				constraintsDo: [ :c |
					c horizontal fitContent.
					c vertical fitContent.
					c flow newLine: aBreak ];
				text: aWord;
				yourself).
			aBreak := false ] ].
	
		self addChildren: theWords.
		self tileCharInfo hasChanged: false.