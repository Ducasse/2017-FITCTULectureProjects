GameLogic
costMoveAtSquare: aSquare
	^ self unitType costMoveAtTerrain: (aSquare getTerrain class). "we should change code in order to getTerrain already contain class of Terrain and not the instance of class"