accessing
costMoveAtTerrain: aTerrainType
	terrainCostList ifNil: [ 
		terrainCostList  := IdentityDictionary newFrom:
			{
			Grass -> 1.
			Tree -> 2.
			Water -> 2.
			Sand -> 2.
			Rock -> 2.
			Mountain -> 2.
			}.
	].

	^ terrainCostList at: aTerrainType