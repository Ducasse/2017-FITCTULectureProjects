instance creation
new: aGrid
	| mw |
	mw := self basicNew
		initialize;
		grid: aGrid.
	mw space show.
	^ mw