getter
getMineQuantityAroundX: xCoord Y: yCoord
	"Get quantity on mines around tile X:Y"
	
	| m |
	m := 0.
	
	"TL" m := m + (self getMineQuantityAtX: (xCoord - 1) Y: (yCoord - 1)).
	"TM" m := m + (self getMineQuantityAtX: (xCoord) Y: (yCoord - 1)).
	"TR" m := m + (self getMineQuantityAtX: (xCoord + 1) Y: (yCoord - 1)).
	
	"ML" m := m + (self getMineQuantityAtX: (xCoord - 1) Y: (yCoord)).
	"MR" m := m + (self getMineQuantityAtX: (xCoord + 1) Y: (yCoord)).
	
	"BL" m := m + (self getMineQuantityAtX: (xCoord - 1) Y: (yCoord + 1)).
	"BM" m := m + (self getMineQuantityAtX: (xCoord) Y: (yCoord + 1)).
	"BR" m := m + (self getMineQuantityAtX: (xCoord + 1) Y: (yCoord + 1)).
	
	^ m.
	
	
	
	
	
	
	
