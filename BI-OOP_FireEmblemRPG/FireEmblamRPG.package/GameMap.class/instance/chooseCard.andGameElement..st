actions
chooseCard: aCard andGameElement: anGame "FieldModel" "GameElement"
	
	self isSomeCardSelected 
	ifTrue: [ ""
		self selectedCard = aCard
		ifTrue: [ "again click on same field"
			self selectedCard: nil.
			self unAccessNeighboards.
		]
		ifFalse: [ "second click on other field"
			(aCard field accessable)
				ifFalse:[ "choose another teammate"
					self unAccessNeighboards.
					self selectedCard: aCard.
					self accessNeighboards: aCard 
						withDistance: (aCard field champion moveDistance )
						andAccess: (aCard field champion interactDistance ).
				]
				ifTrue: [ "move or attack"
					self unAccessNeighboards.
					aCard fieldWithChamp
						ifTrue: [ "attack or heal"
							|message|
							message := (self selectedCard field champion interact: (aCard field champion)) asString.
							eventLog addEvent: message.
							(aCard field champion isDead)
							ifTrue: [ aCard field type: Enum road]
						].
					aCard fieldToMove
						ifTrue: [ "move"
							self moveFrom: self selectedCard to: aCard.
						].
					
"!!!!!!!!!!!!!!!!the place to implement AI and enemy reaction!!!!!!!!!!!!!!!!!!!!!!!"
					
					self selectedCard: nil.
				].
		].
	]
	ifFalse: [ "lets select first card - show accessable fields"
		self selectedCard: aCard.
		self accessNeighboards: aCard 
			withDistance: (aCard field champion moveDistance ) 
			andAccess: (aCard field champion interactDistance ).
	].
	anGame gameMap: self.