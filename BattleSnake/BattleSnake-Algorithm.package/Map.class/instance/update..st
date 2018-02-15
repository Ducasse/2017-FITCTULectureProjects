updating
update: aGameInfo
	"Prepare the 2D array with empty tiles"
	1 to: sizeX do: [ :i | 1 to: sizeY do: [ :j | (tiles at: i) at: j put: EmptyTile new ] ].
	
	"Insert all food tiles"
	aGameInfo food
		do: [ :coord | 
			(self isValidIndex: coord)
				ifTrue: [ (tiles at: coord x) at: coord y put: FoodTile new ] ].
	
	"Insert all alive snakes body tiles"
	aGameInfo snakes
		do: [ :snake | 
			snake coordinates
				do: [ :coord | 
					(self isValidIndex: coord)
						ifTrue: [ (tiles at: coord x) at: coord y put: SnakeTile new ] ] ].
	
	"Insert all dead snakes body tiles"
	aGameInfo dead_snakes
		do: [ :snake | 
			snake coordinates
				do: [ :coord | 
					(self isValidIndex: coord)
						ifTrue: [ (tiles at: coord x) at: coord y put: SnakeTile new ] ] ]