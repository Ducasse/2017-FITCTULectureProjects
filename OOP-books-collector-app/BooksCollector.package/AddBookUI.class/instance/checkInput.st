checking
checkInput
	( self checkEmptyInput) ifTrue: [ ^( self checkIntegerInput) ] ifFalse: [ ^false ].