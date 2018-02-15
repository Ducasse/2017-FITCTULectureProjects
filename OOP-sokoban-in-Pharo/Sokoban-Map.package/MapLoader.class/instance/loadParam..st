loading
loadParam: aParam
	|line char|
	line := fs nextLine .
	char := ( self precheckLine: line ) .
	( char = aParam )
		ifFalse: [ ^false ] .
	^ ( self loadNumberFromLine: line ) .
