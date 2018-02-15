do/undo
redo
	current = moves size
		ifTrue: [ ^ NoMove new ].
	current := current + 1.
	"return the redone move"
	^ moves at: current