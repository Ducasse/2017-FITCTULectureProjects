initialization
defaultTestMap
	self addGameObject: MiningMachine new;
		addGameObjectToGrid: DirtTile new at: 0@ -1;
		addGameObjectToGrid: CoalTile new at: 1@ -1;
		addGameObjectToGrid: IronTile new at: 2@ -1;
		addGameObjectToGrid: SilverTile new at: 3@ -1;
		addGameObjectToGrid: GoldTile new at: 0@ -2;
		addGameObjectToGrid: DiamondTile new at: 1@ -2;
		addGameObjectToGrid: StoneTile new at: 2@ -2;
		addGameObjectToGrid: DirtTile new at: 3@ -2.