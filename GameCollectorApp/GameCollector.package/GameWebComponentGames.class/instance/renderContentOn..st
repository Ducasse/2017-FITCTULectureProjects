initialization
renderContentOn: html
	
	| headerBlock tableBlock |
	
	super renderContentOn: html.
	
	
	
	headerBlock := [ 
			html tableHeading: [ html anchor callback:[ self call: (GameWebComponentGames new games: GameDB uniqueInstance allByName)]; with:'Name' ].
			html tableHeading: [ html anchor callback:[ self call: (GameWebComponentGames new games: GameDB uniqueInstance allByRating)]; with:'Rating' ].
			html tableHeading: 'Platform'.
			html tableHeading: 'State'.
			html tableHeading: ''.
			html tableHeading: '' .
			html tableHeading: ''  ].
		
	tableBlock := [ 	
		html tableHead: (headerBlock).
		html tableBody: [ 
			games do: [ :game |  
						html tableRow: [ 
							html tableData: [ html anchor callback: [ self call: ( GameWebComponentGame new game: game )  ] ; with: game name ].
							html tableData: game rating.
							html tableData: game platform.
							html tableData: game state name.
							html tableData: [ html anchor class:'btn btn-info btn-xs' ; callback: [ self call: (GameWebComponentGame new game: game) ]; with: #show ].
							html tableData: [ html anchor class:'btn btn-primary btn-xs' ; callback: [ self call: (GameWebComponentGameEdit new game: game) ]; with: #edit ].
							html tableData: [ html anchor class:'btn btn-danger btn-xs' ; callback: [ GameDB uniqueInstance remove: game ]; with: #delete ]
					 ] ]]
		].
	
	html div
       class: 'container';
       with: [
			html tbsTable 
				beHover;
				with: tableBlock.
	]