finding
whereTitle: aTitle
	 ^ byTitle at: aTitle ifAbsent: [ innerCollectionType new ]