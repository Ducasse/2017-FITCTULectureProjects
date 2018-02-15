action
openRecursiveAtX: xVal Y: yVal
	| tile |
	
	"Validate tile"
	BoardException new validateCoordinateBoardX: x BoardY: y X: xVal Y: yVal.
	
	"Current tile"
	tile := (self getTileAtX: xVal Y: yVal).
	
	"Number - Open"
	(tile isTileNumber) ifTrue: [
		tile open.
		^ true.
	].  

	"Mine - BOOM"
	(tile isTileMine) ifTrue: [
		self finished: true.
		self won: false.
		^ false.
	]. 
	
	"Empty tile - open everything around"
	(tile isTileEmpty) ifTrue: [
		tile open.
		
		"For each neightbour"
		"TL" (self existAndClosedTileAtX: (xVal - 1) Y: (yVal - 1)) ifTrue: [ self openRecursiveAtX: (xVal - 1) Y: (yVal - 1).].
		"TM" (self existAndClosedTileAtX: (xVal)     Y: (yVal - 1)) ifTrue: [ self openRecursiveAtX: (xVal)     Y: (yVal - 1).].
		"TR" (self existAndClosedTileAtX: (xVal + 1) Y: (yVal - 1)) ifTrue: [ self openRecursiveAtX: (xVal + 1) Y: (yVal - 1).].
	
		"ML" (self existAndClosedTileAtX: (xVal - 1) Y: (yVal))     ifTrue: [ self openRecursiveAtX: (xVal - 1) Y: (yVal).].
		"MR" (self existAndClosedTileAtX: (xVal + 1) Y: (yVal))     ifTrue: [ self openRecursiveAtX: (xVal + 1) Y: (yVal).].
	
		"BL" (self existAndClosedTileAtX: (xVal - 1) Y: (yVal + 1)) ifTrue: [ self openRecursiveAtX: (xVal - 1) Y: (yVal + 1).].
		"BM" (self existAndClosedTileAtX: (xVal)     Y: (yVal + 1)) ifTrue: [ self openRecursiveAtX: (xVal)     Y: (yVal + 1).].
		"BR" (self existAndClosedTileAtX: (xVal + 1) Y: (yVal + 1)) ifTrue: [ self openRecursiveAtX: (xVal + 1) Y: (yVal + 1).].
	].

	^ true.
