initialization
placeWallAt: aNumber

|wall|
wall := WallTile new.
map removeChildAt: aNumber;
addChild: wall at: aNumber .

