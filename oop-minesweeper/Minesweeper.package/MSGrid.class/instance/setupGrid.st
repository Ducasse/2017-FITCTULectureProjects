actions
setupGrid
	"Puts everywhere zero fields"
	| numberField |
	1 to: (grid rowCount) do: [ :i | 
		1 to: (grid columnCount) do: [ :j |
			numberField := MSNumberField new coordinates: i@j.
			numberField announcer when: MSFieldUncoveredAnnoucement send: #uncovered to: self.
			grid at: i at: j put: numberField.
		]
	].
	"Places mines"
	self placeMines.
	
	"Assign neighbours"
	self assignNeighbours.
		
	"Calculates the numbers"
	grid do: [ :field | field  countAdjacentMines ].
	
	uncoveredFieldsCount := 0.