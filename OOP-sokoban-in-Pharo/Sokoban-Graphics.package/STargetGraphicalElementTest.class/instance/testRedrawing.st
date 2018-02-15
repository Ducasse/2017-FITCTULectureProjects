tests
testRedrawing
	|target|
	target := STargetGraphicalElement new.
	self assert: target empty visibility equals: BlVisibility visible.
	self assert: target withSoko visibility equals: BlVisibility hidden.
	self assert: target withBox visibility equals: BlVisibility hidden.
	
	target redrawWithBox.
	self assert: target empty visibility equals: BlVisibility hidden.
	self assert: target withSoko visibility equals: BlVisibility hidden.
	self assert: target withBox visibility equals: BlVisibility visible.
	
	target redrawWithSoko.
	self assert: target empty visibility equals: BlVisibility hidden.
	self assert: target withSoko visibility equals: BlVisibility visible.
	self assert: target withBox visibility equals: BlVisibility hidden.

	target redrawEmpty.
	self assert: target empty visibility equals: BlVisibility visible.
	self assert: target withSoko visibility equals: BlVisibility hidden.
	self assert: target withBox visibility equals: BlVisibility hidden.