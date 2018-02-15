updating
manageEnemyGuard: aGUnit move: aMove

| pts |
pts := aMove guard.

aGUnit changeHPts: (pts/2 - pts).
aGUnit changeMPts: (pts/2 - pts).
aGUnit changeTPts:  pts.
aGUnit changeDPts:  0.