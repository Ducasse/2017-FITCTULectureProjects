accessing
generateMap
	0 to: self gridSize do: [ 
		:indexX |
		0 to: self gridSize do: [ 
			:indexY |
			| position mapTile|
			position := Position new.
			mapTile := MapTile new.
			position posX: indexX; posY: indexY.
			mapTile position: position.
			
			map add: mapTile.
			 ] .
		 ]