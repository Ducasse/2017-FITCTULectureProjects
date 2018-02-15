creation
buildView
	(model currentScene getGameObjectsWith: Renderer)
		collect: [ :go | go getBehaviour: Renderer ]
		thenDo: [ :r | self createBlockElement: r ]