printing
printCast: aSpell on: aUnit

| spellName choices |
spellName := aSpell title.

choices := { 
	'1' -> (' successfully casted ', spellName, ' on ', aUnit nickname).
	'2' -> (' casted ', spellName, ' with all the might on ', aUnit nickname).
	'3' -> (' chanted and sent ', spellName, ' on ', aUnit nickname).
 } asDictionary.

^ choices at: (((choices size) atRandom) asString).