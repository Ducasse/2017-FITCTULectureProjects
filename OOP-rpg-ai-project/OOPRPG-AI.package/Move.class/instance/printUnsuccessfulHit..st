printing
printUnsuccessfulHit: aUnit

| choices |

choices := { 
	'1' -> (' tried to hit ', aUnit nickname, ', but missed').
	'2' -> (' hit a tree while aiming for ', aUnit nickname).
	'3' -> (' failed to damage ', aUnit nickname).
 } asDictionary.

^ choices at: (((choices size) atRandom) asString).