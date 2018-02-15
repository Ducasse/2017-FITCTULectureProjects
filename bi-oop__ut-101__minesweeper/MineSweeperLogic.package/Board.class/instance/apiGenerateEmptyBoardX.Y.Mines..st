api
apiGenerateEmptyBoardX: xVal Y: yVal Mines: minesVal
	"Generates a board of EmtpyTiles - X Y sets width and height of the board, saves mines quantity."
	
	"Validate board size and mines quantity"
	BoardException new validateBoardSizeX: xVal Y: yVal.
	BoardException new validateMinesQuantityBoardX: xVal BoardY: yVal Value: minesVal.
	
	"Generate new Board"
	self generateEmptyBoardX: xVal Y: yVal.
	
	"Save mines quantity"
	self mines: minesVal.