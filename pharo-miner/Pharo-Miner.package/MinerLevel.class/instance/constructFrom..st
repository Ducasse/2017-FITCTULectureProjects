initialization
constructFrom: aCollection
	aCollection do: [ :mo | self addGameObject: mo ].
	