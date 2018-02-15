tests
testLoadGfxResources
	ResourceManager destroyInstance.
	ResourceManager instance loadGfxResources.

	self assert: (ResourceManager instance getResource: 'player_01') isForm.
	self assert: (ResourceManager instance getResource: 'ground_01') isForm.
	self assert: (ResourceManager instance getResource: 'block_01') isForm.
	self assert: (ResourceManager instance getResource: 'crate_06') isForm