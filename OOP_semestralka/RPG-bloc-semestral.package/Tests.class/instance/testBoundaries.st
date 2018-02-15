tests
testBoundaries
|board player monster|
 Transcript open; clear.
 board := GameBoard new.
 
 player:= board player1.
 monster:= player currentlyPlayingMonster.

 (self assert: (monster moveTo: 22@9) equals: false).