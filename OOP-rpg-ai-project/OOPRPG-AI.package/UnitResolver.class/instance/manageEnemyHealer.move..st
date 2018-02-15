updating
manageEnemyHealer: aGUnit move: aMove

| mana pts |
mana := (aMove spell) manacost.
pts := mana + aMove duration.

aGUnit changeMPts: pts/2.
aGUnit changeHPts: pts.
aGUnit changeTPts: (pts/2 - pts).
aGUnit changeDPts: (pts/2 - pts).