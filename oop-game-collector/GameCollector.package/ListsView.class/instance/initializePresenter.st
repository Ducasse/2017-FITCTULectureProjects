initialization
initializePresenter
	searchModel
		acceptBlock: [ self createList: searchModel text.
			searchModel text: '' ].
	listModel whenSelectedItemChanged: [ :item | self selectList: item ].
	listModel
		acceptDropBlock: [ :transfer :event :source :receiver | 
			| node target |
			node := transfer passenger item.
			target := receiver.
			self move: node fromCurrentTo: target ]