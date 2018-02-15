private
placeMines
	| mineCount rng ranX ranY field isNearFirstClick mineField |
	
	"TODO: proper mine placing, this is full rng placeholder"

	"Populating with mines"
	
	rng := Random new.
	mineCount := 0.
	[mineCount < (gameProps mineCount)] whileTrue: [ 
		ranX := ((rng next) * (grid rowCount)) asInteger + 1.
		ranY := ((rng next) * (grid columnCount)) asInteger + 1.
		
		field := (grid at: ranX at: ranY).
		
		"The first field I click will be the zero field."
		isNearFirstClick := (((ranX >= (firstMoveCoords x - 1) and: ranX <= (firstMoveCoords x + 1)) and: (ranY >= (firstMoveCoords y - 1))) and: ranY <= (firstMoveCoords y + 1)).
		
		
		((field isMine) or: isNearFirstClick)
			ifFalse: [
					mineField := MSMineField new coordinates: ranX@ranY.
					mineField announcer when: MSGameOverAnnoucement send: #gameOver to: self.
					grid at: ranX at: ranY put: mineField.
					mineCount := mineCount + 1.
			].
	].
	