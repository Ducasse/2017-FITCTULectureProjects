gameFlow
prepareMove

(self shouldEndGame) ifTrue: [ ^ self endGame ].
activeGameBoard notifySquaresHighlightOFF.
self getActivePlayer. "set actvivePlayer based on player on turn"
activeGameBoard printOnTranscriptInfo.
activeGameBoard notifySquaresHighlightON.

self attackBoolean: false.
activePlayer move: self.