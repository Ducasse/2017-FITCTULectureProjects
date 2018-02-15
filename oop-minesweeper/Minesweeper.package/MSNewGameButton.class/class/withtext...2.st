instance creation
withtext: text
	| button |
	button := self new.
	button text: text.
	^ button