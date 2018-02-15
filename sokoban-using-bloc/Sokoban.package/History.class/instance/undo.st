do/undo
undo
	current = 0
		ifTrue: [ ^ NoMove new ].
	current := current - 1.
	"return the undone move"
	^ moves at: current + 1