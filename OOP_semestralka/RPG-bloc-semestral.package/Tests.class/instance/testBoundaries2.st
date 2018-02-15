tests
testBoundaries2
|board player monster x y max|
 Transcript open; clear.
 board := GameBoard new.
 
 player:= board player1.
 monster:= player currentlyPlayingMonster.
 x:= monster positionWithinArray x.
 y:= monster positionWithinArray y.
 max:= monster movementMax.
 (self assert: (monster moveTo: (x+(max/2)@y)) equals: true).