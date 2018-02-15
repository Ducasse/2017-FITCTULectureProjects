generator
generateNumbers
	"If a tile has mines around, change it to TileNumber and add number"
	
	| minesAround |
	
	"For each tile"
	1 to: self y do: [ :inY |
		1 to: self x do: [ :inX |
			
			"If a tile is empty, it could be a number"
			((self getTileAtX: inX Y: inY) isTileEmpty ) ifTrue: [
				
				"Count mines around this tile"
				minesAround := (self getMineQuantityAroundX: inX Y: inY).
				"We have some mines around - change tile"
				(minesAround > 0) ifTrue: [ 
					self setNumberAtX: inX Y: inY Number: minesAround.
				].
			
			].
		].
	].