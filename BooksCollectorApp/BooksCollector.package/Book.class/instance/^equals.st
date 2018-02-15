comparing
= aBook
	aBook class = self class
		ifFalse: [ ^ false ].
	^ title = aBook title & (author = aBook author) & (genre = aBook genre)
		& (isbn = aBook isbn) & (year = aBook year)