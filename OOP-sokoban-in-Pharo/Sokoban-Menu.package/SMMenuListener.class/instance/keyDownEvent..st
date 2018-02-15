events handling
keyDownEvent: anEvent
	"undo"
	anEvent key = Key u
		ifTrue: [ round undo. 		^ self].
	"moveLeft"
	anEvent key = Key arrowLeft
		ifTrue: [ round moveLeft. 	^ self ].
	"moveRight"
	anEvent key = Key arrowRight
		ifTrue: [ round moveRight.	^ self ].
	"moveUp"
	anEvent key = Key arrowUp
		ifTrue: [ round moveUp.		^ self ].
	"moveDown"
	anEvent key = Key arrowDown
		ifTrue: [ round moveDown.	^ self ].