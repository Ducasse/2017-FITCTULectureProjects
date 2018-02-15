tests
testOpenRecursiveAtXY
	|b|

	b:= Board new.
	"Generate new Board"
	b generateEmptyBoardX: 5 Y: 5.
	"Save mines quantity"
	b mines: 24.
	
	"Toggle"
	b initialized: true.
	"Generate mines"
	b generateMinesExceptX: 2 ExceptY: 2.	
	"Set numbers"
	b generateNumbers.

	"Open"
	self assert: (b openRecursiveAtX: 2 Y: 2).
	self assert: (b openRecursiveAtX: 2 Y: 2).
	self assert: (b openRecursiveAtX: 2 Y: 3) equals: false.

