initialization
initializePresenter
	gameList
		whenSelectedItemChanged: [ :item | 
			self selectedItem: item.
			item ifNil: [ gameInfo info label: '' ].
			item ifNotNil: [ gameInfo info label: (item at: 4) asString ] ]