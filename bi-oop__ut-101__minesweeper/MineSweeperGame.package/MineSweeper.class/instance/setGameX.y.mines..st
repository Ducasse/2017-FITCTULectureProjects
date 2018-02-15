initialization
setGameX: xLen y: yLen mines: minesLen
	"Tested by testXYMines"
	"Create new logic layer"

	board := Board new apiGenerateEmptyBoardX: xLen Y: yLen Mines: minesLen.

	"Create new UI layer"
	self exists ifFalse: [ ui := UIGame new ].

	"Set time to zero"
	time := 0