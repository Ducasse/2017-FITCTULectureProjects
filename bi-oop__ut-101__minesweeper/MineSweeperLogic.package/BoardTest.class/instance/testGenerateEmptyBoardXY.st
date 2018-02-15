tests
testGenerateEmptyBoardXY
   "Check if board generates right amount of mines"
		
	| board |
	
	"Create board with mines"
	board := Board new.
	board generateEmptyBoardX: 16 Y: 10.
	
	"Check empty"
	1 to: (board y) do: [ :inY |
		1 to: (board x) do: [ :inX |
			self assert: ((board getTileAtX: inX Y: inY) isTileEmpty). 
		].
	].	