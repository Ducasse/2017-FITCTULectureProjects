accessing
menuGameModel: aMenuGameModel
	| aButtonEventListener |
	self removeChildren.
	menuGameModel := aMenuGameModel.
	aButtonEventListener := self newButtonEventListener gModel: aMenuGameModel.

	
	menuGameModel primaryButtons
		do: [ :aButton | self addChild: (self newButtonElement button: aButton; addEventHandler: aButtonEventListener) ] 
		