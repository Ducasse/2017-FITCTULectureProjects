printing
printGuard: aNumber on: aUnit

| choices |

choices := { 
	'1' -> (' jumped in to protect ', aUnit nickname, ', providing ', aNumber asString, ' protection').
	'2' -> (' stood in front of ', aUnit nickname, ', giving protection of ', aNumber asString, ' points').
	'3' -> (' is guarding ', aUnit nickname, ' for ', aNumber asString, ' points').
 } asDictionary.

^ choices at: (((choices size) atRandom) asString).