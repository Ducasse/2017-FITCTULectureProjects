accessing
mapModel: aMapModel
	mapModel := aMapModel.
	self layout columnCount: aMapModel tiles columnCount.
	aMapModel tiles do: [ :element | self addChild: (element mapTile). element mapTile map: self ].