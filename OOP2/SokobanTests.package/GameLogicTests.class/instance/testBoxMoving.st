tests
testBoxMoving
|game box|

game := Level new.
game board: (Board width: 2 height: 1).
box := Box new.
game boxes add: box.

"All floor one box"
game board put: (Floor new) X:1 Y:1.
game board put: (Floor new) X:2 Y:1.
box x:1.
box y:1.

self assert: (game atX: 1 Y: 1) class equals: Box. 
self assert: (game atX: 2 Y: 1) class equals: Floor. 

game moveBox: box dir: Direction right. 
self assert: (game atX: 1 Y: 1) class equals: Floor. 
self assert: (game atX: 2 Y: 1) class equals: Box. 

game moveBox: box dir: Direction right. 
self assert: (game atX: 1 Y: 1) class equals: Floor. 
self assert: (game atX: 2 Y: 1) class equals: Box. 

"box right wall left"
game board put: (Wall new) X:1 Y:1.
game moveBox: box dir: Direction left. 
self assert: (game atX: 1 Y: 1) class equals: Wall. 
self assert: (game atX: 2 Y: 1) class equals: Box. 

"box right target left"
game board put: (Target new) X:1 Y:1.
game moveBox: box dir: Direction left. 
self assert: (game atX: 1 Y: 1) class equals: Box. 
self assert: (game atX: 2 Y: 1) class equals: Floor. 


