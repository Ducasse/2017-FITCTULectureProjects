rendering
renderContentOn: html
	
	
	super renderContentOn: html.
	
	html div
       class: 'container';
       with: [
				html heading level: 2; with: 'Select a game from IGDB database'.	
				html text: 'Select one game!'.
				games do: [ :game |  
					html div
						class: 'row row-eq-height';
						style: 'border:1px solid black;';
						with:[
							self renderAddGameForm: game On: html.							
							]
					 ]
			]