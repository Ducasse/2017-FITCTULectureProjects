instance creation
withText: text
	| button |
	button := self new.
	button text: text.
	^ button