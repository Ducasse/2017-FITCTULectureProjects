tests
testRunFromTo
	|algorithm tileFrom tileTo|
	"BasicNew used only to test abstract message"
	tileFrom := MapTileModelGrass new.
	tileTo   := MapTileModelSwamp new.
	algorithm := FindingPathAlgorithm basicNew.	
	self should: [algorithm runFrom: tileFrom to: tileTo .] raise: SubclassResponsibility .