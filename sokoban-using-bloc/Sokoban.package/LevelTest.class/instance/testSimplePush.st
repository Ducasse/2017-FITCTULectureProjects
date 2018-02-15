tests
testSimplePush
	| xsbIn xsbAfterMove xsbOut level |
	xsbIn := '
#####
#.$@#
#####'.
	xsbAfterMove := '
#####
#*@ #
#####'.
	level := Level loadXsb: xsbIn.
	level move: Left new.
	self assert: level player levelPos point equals: 1 @ 2.
	self assert: level goalCount equals: 0.
	xsbOut := self toDebugString: level printString.
	self assert: xsbOut equals: xsbAfterMove