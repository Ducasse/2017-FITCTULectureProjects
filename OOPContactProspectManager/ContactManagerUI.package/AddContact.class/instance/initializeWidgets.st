initialization
initializeWidgets
	userList := self newList.
	userList displayBlock: [ :x | x username ].
	
	userList whenSelectedItemChanged: [ :item | 
		item ifNotNil: [ 
			self executeBlockWithUser: item.
			self window close ]
		]
	