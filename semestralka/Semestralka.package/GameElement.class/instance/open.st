instance creation
open
	space := BlSpace new.
	space extent: (GameTileElement defaultSize * (model getSize + (1@1))) - GameTileElement defaultSize + ((5 @ 5) * (model getSize)).
	space root addChild: self.
	space show