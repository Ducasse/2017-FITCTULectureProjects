tests
testVisibility
	|target|
	target := STargetGraphicalElement new.
	self assert: target empty visibility equals: BlVisibility visible.
	self assert: target withSoko visibility equals: BlVisibility hidden.
	self assert: target withBox visibility equals: BlVisibility hidden.
	self assert: target visibility equals: BlVisibility visible.