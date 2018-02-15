initialization
initialize
	super initialize.
	self layout: (BlGridLayout vertical cellSpacing: 0).
	self layout rowCount: self rowCount.
	self background: self getBackground.
	self size: self size.
	self relocate: self position.
	self geometry: (BlRectangle cornerRadius: self cornerRadius)