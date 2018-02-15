accessing
class: aClass
	| aText |
	message == aClass
		ifTrue: [ ^ self ].

	message := aClass.
	
	aText := BrRopedText string: message.
	aText attributes: { BrFontSizeAttribute size: 13 }.
	itemElement text: aText