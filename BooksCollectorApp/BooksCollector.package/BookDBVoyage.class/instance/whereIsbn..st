finding
whereIsbn: anIsbn
	^(Book selectMany: { #isbn -> anIsbn} asDictionary)