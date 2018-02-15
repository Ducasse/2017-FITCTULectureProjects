methods
makeGridOfSize: rows by: cols
	|groundTiles obstacleTiles grid rng randomTile|
	
	groundTiles := GroundTile allSubclasses.
	obstacleTiles := ObstacleTile allSubclasses.
	
	rng := Random new.
	
	randomTile := [ ((rng nextInt: 4) > 1) 
		ifTrue: [ groundTiles atRandom new ]
		ifFalse: [ obstacleTiles atRandom new ]
	].
	
	grid := TileGrid withColumns: cols.
	cols timesRepeat:
		[ grid add: ((1 to: rows) collect: [ :i | randomTile value. ])].
	^ grid.
