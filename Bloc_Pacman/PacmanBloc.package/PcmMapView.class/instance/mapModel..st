accessing
mapModel: aPcmMap
	mapModel := aPcmMap. 
	self layout columnCount: mapModel columnsCnt.
	mapModel blocks 
		do: [ :aBlock | self addChild: (aBlock view) ]