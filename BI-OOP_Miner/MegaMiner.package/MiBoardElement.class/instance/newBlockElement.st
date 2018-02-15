initialization
newBlockElement
	| element |
	element := MiBlockElement new.
	viewCollection add: element.
	^ element