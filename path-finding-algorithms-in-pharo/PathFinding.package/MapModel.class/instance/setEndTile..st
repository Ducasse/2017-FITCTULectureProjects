accessing
setEndTile: aTile
	end := aTile.
	
	algorithm collection endTile: aTile.
	[algorithm runFrom: (self tiles at: (start x) at: (start y)) to: (self tiles at: (end x) at: (end y))] fork.