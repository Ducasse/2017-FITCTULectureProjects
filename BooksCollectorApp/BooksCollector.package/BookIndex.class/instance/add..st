adding
add: aBook
	(byTitle at: aBook title ifAbsentPut: [ innerCollectionType new ]) add: aBook.
	(byAuthor at: aBook author ifAbsentPut: [ innerCollectionType new ]) add: aBook.
	(byGenre at: aBook genre ifAbsentPut: [ innerCollectionType new ]) add: aBook.
	(byYear at: aBook year ifAbsentPut: [ innerCollectionType new ]) add: aBook.
	(byIsbn at: aBook isbn ifAbsentPut: [ innerCollectionType new ]) add: aBook.
	