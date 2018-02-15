run
showPath
	| tile stack |
	stack := TileStack new.
	tile := end.
	[ tile == start ]
		whileFalse:
		[
			stack push: tile.
			tile := path at: tile.
		].	
		
	start onPath: true.
		
	[ stack isEmpty ]
		whileFalse:
		[
			tile := stack pop.
			tile onPath: true.
			250 milliSeconds wait. 
		].