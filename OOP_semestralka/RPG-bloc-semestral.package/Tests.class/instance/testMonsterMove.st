tests
testMonsterMove
|board player monster|
 Transcript open; clear.
 board := GameBoard new.
 
 player:= board player1.
 monster:= player currentlyPlayingMonster.
 monster moveTo: 5@5.
 monster movementCurrent.
 (self assert: monster  movementCurrent equals: 15).
 (self assert: (monster moveTo: 5@5) equals: false).
  