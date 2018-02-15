initialization
initializeWindow
	self
		windowExtent: 240 @ 110;
		title: 'Random map';
		resizable: false.
	self root
		background: (Color r: 0.13 g: 0.13 b: 0.13);
		addChild: self initializeSizeGroup;
		addChild:
			((BlTextElement
				text: ('SIZE:' asRopedText attributes: {(BrTextForegroundAttribute paint: Color white)}))
				relocate: 10 @ 17);
		addChild: ((self makeGeneratingButton: NoiseGridGeneration text: 'PerlinNoise') relocate: 10 @ 60);
		addChild: ((self makeGeneratingButton: TrivialGridGeneration text: 'trivial') relocate: 145 @ 60)