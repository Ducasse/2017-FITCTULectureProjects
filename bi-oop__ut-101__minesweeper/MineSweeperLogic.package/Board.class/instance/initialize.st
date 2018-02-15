initialization
initialize
	super initialize.
	
	self initialized: false.
	"Generate empty board"
	self generateEmptyBoardX: 10 Y: 10.
	
	"Generate mines"
	self mines: 6.
	self generateMinesExceptX: 5 ExceptY: 5.
	
	"Generate numbers"
	self generateNumbers.