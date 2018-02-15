initialization
initializeToolbar
	menu := MenuModel new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Přidat hru';
						icon: (self iconNamed: #add);
						action: [ self addGame ] ].
			group
				addItem: [ :item |
					removeButton :=
					item
						name: nil;
						description: 'Smazat hru';
						icon: (self iconNamed: #delete);
						action: [ self removeSelectedGame ] ] ].
	menu applyTo: self