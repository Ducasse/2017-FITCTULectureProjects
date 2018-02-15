finding
whereTitle: aTitle
	^(Book selectMany: { #title -> aTitle} asDictionary)