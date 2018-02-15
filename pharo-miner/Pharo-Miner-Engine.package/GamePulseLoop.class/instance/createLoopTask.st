loop process
createLoopTask
	^ [ [ self calcTime.
	self firePulse.
	self wait ] repeat ]