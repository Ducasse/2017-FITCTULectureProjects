tests
testVisibility
	|floor|
	floor := SFloorGraphicalElement new.
	self assert: floor empty visibility equals: BlVisibility visible.
	self assert: floor withSoko visibility equals: BlVisibility hidden.
	self assert: floor withBox visibility equals: BlVisibility hidden.
	self assert: floor visibility equals: BlVisibility visible.