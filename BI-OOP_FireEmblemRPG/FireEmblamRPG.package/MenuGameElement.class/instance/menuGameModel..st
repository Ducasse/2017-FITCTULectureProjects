accessing
menuGameModel: aMenuGameModel
	self removeChildren.
	menuGameModel := aMenuGameModel.
	
	menuGameModel primaryButtons
		do: [ :aButton | self addChild: (self newButtonElement button: aButton) ] 
		