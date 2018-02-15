finding
whereGenre: aGenre
	 ^ byGenre at: aGenre ifAbsent: [ innerCollectionType new ]