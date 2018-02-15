finding
whereAuthor: anAuthor
	^(Book selectMany: { #author -> anAuthor } asDictionary)