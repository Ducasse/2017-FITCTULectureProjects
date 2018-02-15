tests
testSimpleMoveUndoRedo
	| xsbIn xsbAfterMove xsbOut level |
	xsbIn := '
######
#. @$#
######'.
	xsbAfterMove := '
######
#.@ $#
######'.
	level := Level loadXsb: xsbIn.
	self assert: level player levelPos point equals: 1 @ 3.
	self assert: level goalCount equals: 1.
	"make move"
	level move: Left new.
	self assert: level player levelPos point equals: 1 @ 2.
	self assert: level goalCount equals: 1.
	xsbOut := self toDebugString: level printString.
	self assert: xsbOut equals: xsbAfterMove.
	"undo move"
	level undoMove.
	self assert: level player levelPos point equals: 1 @ 3.
	self assert: level goalCount equals: 1.
	xsbOut := self toDebugString: level printString.
	self assert: xsbOut equals: xsbIn.
	"redo move"
	level redoMove.
	self assert: level player levelPos point equals: 1 @ 2.
	self assert: level goalCount equals: 1.
	xsbOut := self toDebugString: level printString.
	self assert: xsbOut equals: xsbAfterMove