tests
testRun
	|algorithm|
	"BasicNew used only to test abstract message"
	algorithm := FindingPathAlgorithm basicNew.	
	self should: [algorithm run.] raise: SubclassResponsibility .