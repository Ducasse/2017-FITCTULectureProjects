utils
toDebugString: printedString
	"format it with leading newline and no trailing whitespace so it matches the way levels are specified in string literals"
	^ '
' , (Character cr join: (printedString lines collect: [ :line | line trimRight ]))