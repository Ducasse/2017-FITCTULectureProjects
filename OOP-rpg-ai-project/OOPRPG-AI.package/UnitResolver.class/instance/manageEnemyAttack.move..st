updating
manageEnemyAttack: aGUnit move: aMove

| pts |
pts := aMove damage.

aGUnit changeHPts: (pts/2 - pts).
aGUnit changeMPts: (pts/2 - pts).
aGUnit changeTPts:  0.
aGUnit changeDPts:  pts.