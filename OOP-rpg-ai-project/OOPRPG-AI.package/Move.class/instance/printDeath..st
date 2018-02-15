printing
printDeath: aUnit

| choices |

choices := { 
	'1' -> ('That was just too much for ', aUnit nickname).
	'2' -> ('And as a result ', aUnit nickname, ' is no longer with us').
	'3' -> (aUnit nickname, ' died a hero').
	'4' -> (aUnit nickname, ' died a coward').
 } asDictionary.

^ choices at: (((choices size) atRandom) asString).