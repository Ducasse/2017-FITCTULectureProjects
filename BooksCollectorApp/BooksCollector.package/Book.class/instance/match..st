accessing
match: aPattern
	^ (aPattern match: title) | (aPattern match: author) | (aPattern match: genre) | (aPattern match: isbn) | (aPattern match: year)