accessing
renderContentOn: html

		
	super renderContentOn: html.
	html div
		class: 'container';
		with: [ 
			self renderShowOn: html.
			html break.
			self renderStateMenuOn: html.
			game state returnable ifTrue:[
				self renderModalReturnOn: html.
				html tbsButton: [ html html: '<a data-toggle="modal" href="#return"> Return </a>' ]			
				]
			
			
			 ].
		
	
	html anchor
		class:'btn btn-default';
		callback: [ self call: (GameWebComponentGames new) ];
		with: [ html tbsGlyphIcon iconArrowLeft ]
		
	