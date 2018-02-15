initialization
createMapWithX: x Y: y map: aMap
	| elemcnt |
	elemcnt := x * y.
	tiles := Array new: elemcnt.
	xMapSize := x.
	yMapSize := y.
	self layout: BlGridLayout horizontal.
	self layout columnCount: x.
	self
		constraintsDo: [ :cst | 
			cst horizontal fitContent.
			cst vertical fitContent ].
	1 to: elemcnt do: [ :i | 
		tiles atWrap: i put: (aMap atWrap: i) createGraphicalElement.
		Transcript show: 'Adding an element. (at ', i asString , ')'; cr.
		self addChild: (tiles at: i) ].
