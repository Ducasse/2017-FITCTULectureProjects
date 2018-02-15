instance creation
withGameProperties: gameProps
	| aGrid |
	aGrid := self new.
	aGrid gameProperties: gameProps.
	^ aGrid
	