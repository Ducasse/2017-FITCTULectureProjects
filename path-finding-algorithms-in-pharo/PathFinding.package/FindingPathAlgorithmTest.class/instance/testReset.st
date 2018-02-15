tests
testReset
	|algorithm|
	"BasicNew used only to test abstract message"
	algorithm := FindingPathAlgorithm basicNew.		
	self should: [algorithm reset.] raise: SubclassResponsibility .
	self assert: algorithm start equals: nil.
	self assert: algorithm end equals: nil.
	self assert: algorithm path equals: Dictionary new.