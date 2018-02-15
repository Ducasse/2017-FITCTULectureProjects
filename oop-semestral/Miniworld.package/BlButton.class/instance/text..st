accessing
text: aText
	aText
		ifNil: [ textElement
				ifNotNil: [ self removeChild: textElement parent.
					textElement := nil ].
			^ self ].
	textElement
		ifNil: [ textElement := self class textElement.
			self addChild: (self class textWrapper addChild: textElement) ].
	textElement text: (self class styleString: aText asUppercase).
	self updateSize