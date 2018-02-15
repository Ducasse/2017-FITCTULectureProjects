rendering
renderContentOn: html

		
	super renderContentOn: html.
	html div
		class: 'container';
		with: [ 
			self renderEditOn: html.
			
			 ].
		
	
	html anchor
		class:'btn btn-default';
		callback: [ self call: (GameWebComponentGames new ) ];
		with: [ html tbsGlyphIcon iconArrowLeft ]
		
	