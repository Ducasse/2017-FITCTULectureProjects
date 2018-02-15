This element handles all battlefield drawing logic. 

methods:
battleField
	getter of battle field object.
battleField:
	sets new instance of battleField. When instance is 	set, this element sets it's columnCount and 	creates TileElements and TileEventLister for every 	tile on map
newMapTileElement
	creates new instance of TileElement
newMapTileEventListener
	creates new evenet listener for tile