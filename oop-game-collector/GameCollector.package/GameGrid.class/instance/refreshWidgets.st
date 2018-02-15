initialization
refreshWidgets
	| col1 col2 col3 col4 |
	self rootNodeHolder: [ :item | TreeNodeModel new content: item ].
	col1 := TreeColumnModel new
		headerIcon: (self iconNamed: #nautilusIcon);
		displayBlock: [ :node | node content title ];
		headerLabel: 'Název'.
	col2 := TreeColumnModel new
		headerIcon: (self iconNamed: #nautilusIcon);
		displayBlock: [ :node | node content releaseYear ];
		headerLabel: 'Rok vydání'.
	col3 := TreeColumnModel new
		headerIcon: (self iconNamed: #nautilusIcon);
		displayBlock: [ :node | node content genre ];
		headerLabel: 'Žánr'.
	col4 := TreeColumnModel new
		headerIcon: (self iconNamed: #nautilusIcon);
		displayBlock: [ :node | node content description truncate: 40 ];
		headerLabel: 'Popis'.
	self
		columns:
			{col1.
			col2.
			col3.
			col4};
		dragEnabled: true;
		dropEnabled: false