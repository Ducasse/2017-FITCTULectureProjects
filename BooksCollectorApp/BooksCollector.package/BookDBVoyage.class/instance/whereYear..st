finding
whereYear: aYear
	^(Book selectMany: { #year -> aYear} asDictionary)