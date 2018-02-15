tests
testGetResource
	ResourceManager instance loadGfxResources.
	self assert: (ResourceManager instance getResource: 'player_01') isForm