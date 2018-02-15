initialization
initBlock: blockClass withTexture: aTexturename
	^ (blockClass asString asSymbol -> (self loadTexture: aTexturename))