initialization
init
	"initialization - called automatically from map:"

	| gm |
	"initialize map"
	self initGameFromReceivedMap.

	"init counter in menu"
	menuInstance boxCnt: boxCnt .
	
	"send map do graphic"
	gm := SRMapForGraphic new.
	gm map: map map.
	graphicInstance createMapWithX: sizeY Y: sizeX map: gm map.

	"draw all moving objects"
	self drawAllMovingObjects