drawing
card: aMgdCardModel
	"Attach a card model and subscribe to its announcements.
	aMgdCardModel must not be nil"
	
	self
		assert: [ aMgdCardModel isNotNil ]
		description: [ 'Card model must not be nil' ].
	
	card := aMgdCardModel.