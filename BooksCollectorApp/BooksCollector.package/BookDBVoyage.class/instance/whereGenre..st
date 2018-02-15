finding
whereGenre: aGenre
	^(Book selectMany: { #genre -> aGenre } asDictionary)