loading
loadMap: aPath
	self initialize .
	fs := FileStream fileNamed: aPath .
	debug := fs  .
	fs ifNil: [ ^ 'Map loading failed unexpectedly.' ] .
	self loadMapHeader .
	self validateHeader
		ifFalse: [ fs close .
			^ 'Map header is invalid.' ] .
	self loadMapData .
	self validateMapData
		ifFalse: [ fs close.
			^ 'Map data are invalid.' ] .
	fs close .
	^ map .

"Loads a map and returns it as a 2D matrix (Array of Arrays). In case of failure returns a string briefly describing failure."
