initialization
model: aMenuModel
	super model: aMenuModel.
	self addChild: self getLogo.
	model buttons do: [ :aButton | self addChild: (self newButtonElement model: aButton) ]