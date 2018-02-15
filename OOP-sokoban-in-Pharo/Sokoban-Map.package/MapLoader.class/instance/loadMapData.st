loading
loadMapData
	|rawMap|
	rawMap := self loadRawMapData .
	rawMap ifNil: [ ^ nil ] .
	self convertRawTo2DMatrix: rawMap .
