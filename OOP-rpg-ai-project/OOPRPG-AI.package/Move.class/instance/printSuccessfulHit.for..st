printing
printSuccessfulHit: aUnit for: aNumber

| choices |

choices := { 
	'1' -> (' hit ', aUnit nickname, ' for ', aNumber asString, ' damage').
	'2' -> (' made a precise strike, damaging ', aUnit nickname, ' for ', aNumber asString, ' points').
	'3' -> (' damaged ', aUnit nickname, ' for a whopping ', aNumber asString, ' points').
 } asDictionary.

^ choices at: (((choices size) atRandom) asString).