initialization
initialize: onPort
	super initialize.
	
	teapot := Teapot configure: { 
		#defaultOutput -> #json.
		#port -> onPort 
	 }.
	
	teapot 
		GET: '/games' -> [ :req |
				self games: (req at: #orderedBy) filterBy: (req at: #platform)
			];

		GET: '/games/<id>' -> [ :req |
				self game: (req at: #id)
			];

		POST: '/games' -> [ :req |  
				self addGameFromRequest: req.
			];

		PUT:  '/games/<id>' -> [ :req | 
			self updateGame: (Game withName: (req at: #name) 
										 withDesc: (req at: #description)  
										 withLength: (req at: #length)
								  ) 
				  id: (req at: #id) 
			];

		DELETE: '/games/<id>' -> [ :req |  self deleteGame: (req at: #id) ].
		
		
	
