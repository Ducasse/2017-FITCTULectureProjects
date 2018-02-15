finding
whereIsbn: aIsbn
	 ^ byIsbn at: aIsbn ifAbsent: [ innerCollectionType new ]