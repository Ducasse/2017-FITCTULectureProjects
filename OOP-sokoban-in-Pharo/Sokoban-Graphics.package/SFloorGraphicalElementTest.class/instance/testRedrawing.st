tests
testRedrawing
	|floor|
	floor := SFloorGraphicalElement new.
	self assert: floor empty visibility equals: BlVisibility visible.
	self assert: floor withSoko visibility equals: BlVisibility hidden.
	self assert: floor withBox visibility equals: BlVisibility hidden.
	
	floor redrawWithBox.
	self assert: floor empty visibility equals: BlVisibility hidden.
	self assert: floor withSoko visibility equals: BlVisibility hidden.
	self assert: floor withBox visibility equals: BlVisibility visible.
	
	floor redrawWithSoko.
	self assert: floor empty visibility equals: BlVisibility hidden.
	self assert: floor withSoko visibility equals: BlVisibility visible.
	self assert: floor withBox visibility equals: BlVisibility hidden.

	floor redrawEmpty.
	self assert: floor empty visibility equals: BlVisibility visible.
	self assert: floor withSoko visibility equals: BlVisibility hidden.
	self assert: floor withBox visibility equals: BlVisibility hidden.