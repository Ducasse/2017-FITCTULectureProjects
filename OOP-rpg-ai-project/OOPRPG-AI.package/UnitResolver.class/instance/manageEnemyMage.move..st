updating
manageEnemyMage: aGUnit move: aMove

| mana pts |
mana := (aMove spell) manacost.
pts := mana + aMove duration.

aGUnit changeMPts: pts.
aGUnit changeHPts: pts/2.
aGUnit changeTPts: (pts/2 - pts).
aGUnit changeDPts: (pts/2 - pts).