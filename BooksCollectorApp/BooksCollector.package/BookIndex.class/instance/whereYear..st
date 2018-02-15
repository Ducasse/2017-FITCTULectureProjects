finding
whereYear: aYear
	 ^ byYear at: aYear ifAbsent: [ innerCollectionType new ]