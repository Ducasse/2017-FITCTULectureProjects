removal
remove: aBook
	(self includes: aBook)
		ifFalse: [ ^ nil ].
	self
		remove: aBook withProperty: aBook title from: byTitle;
		remove: aBook withProperty: aBook author from: byAuthor;
		remove: aBook withProperty: aBook genre from: byGenre;
		remove: aBook withProperty: aBook year from: byYear;
		remove: aBook withProperty: aBook isbn from: byIsbn.