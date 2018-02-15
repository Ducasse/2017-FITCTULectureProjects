tests
testMap
	| mapTile |
	mapTile := MapTile new.
	"testing with dummyValue"
	mapTile map: 'dummyValue'.
	self assert: mapTile map equals: 'dummyValue'.