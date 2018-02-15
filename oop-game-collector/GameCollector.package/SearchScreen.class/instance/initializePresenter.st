initialization
initializePresenter
	grid
		whenSelectedItemChanged: [ :item | 
			self refreshSelection.
			item ifNil: [ detail game: Game new ] ifNotNil: [ detail game: item ] ].
	detail subscribeChanges: [ grid updateTree. list changed ]