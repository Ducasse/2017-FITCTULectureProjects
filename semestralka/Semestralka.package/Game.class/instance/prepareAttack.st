gameFlow
prepareAttack
"self getActivePlayer - nastav aktivniho hrace - neni potreba protoze ho nastvime uz v metode prepareMove"
activeGameBoard notifySquaresHighlightOFF.
self attackBoolean: true.
activePlayer attackMove: self.
