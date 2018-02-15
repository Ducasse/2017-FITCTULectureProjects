accessing
neighbours: aTile
	| neighbourCollection |
	neighbourCollection := OrderedCollection new.
	
	neighbourCollection
		add: (tiles at: aTile x + 1 at: aTile y);
	 	add: (tiles at: aTile x - 1 at: aTile y);
	 	add: (tiles at: aTile x at: aTile y + 1);
	 	add: (tiles at: aTile x at: aTile y - 1).
	
	^ neighbourCollection.