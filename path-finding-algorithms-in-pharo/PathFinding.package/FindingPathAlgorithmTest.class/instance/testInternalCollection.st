tests
testInternalCollection
	|algorithm|
	"BasicNew used only to test abstract message"
	algorithm := FindingPathAlgorithm basicNew.	
	self should: [algorithm internalCollection.] raise: SubclassResponsibility .