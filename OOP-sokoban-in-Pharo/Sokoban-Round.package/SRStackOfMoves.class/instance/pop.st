removing
pop
	"check size of stack"

	elements size > 0
		ifTrue: [ "pop element from stack" ^ elements removeFirst ]
		ifFalse: [ ^ nil ]