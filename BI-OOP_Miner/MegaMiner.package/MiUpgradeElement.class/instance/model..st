initialization
model: aComponentsModel
	super model: aComponentsModel.
	model components all
		do:
			[ :aComponent |
				self addChild: (self newButtonElement model: aComponent; miner: aComponentsModel)
			];
		do:
			[ :aComponent |
				self addChild: (self newTextElement model: aComponent componentName)
			]