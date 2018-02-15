accessing
costMoveAtTerrain: aTerrainType
	terrainCostList ifNil: [ 
		terrainCostList  := IdentityDictionary newFrom:
			{
			Grass -> 2.
			Tree -> 4.
			Water -> 4.
			Sand -> 4.
			Rock -> 4.
			Mountain -> 4.
			}.
	].

	^ terrainCostList at: aTerrainType