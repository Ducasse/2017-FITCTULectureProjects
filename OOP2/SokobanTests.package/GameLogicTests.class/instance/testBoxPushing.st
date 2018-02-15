tests
testBoxPushing
|game box box2|

game := Level new.
game board: (Board width: 5 height: 1).
box := Box new.
game boxes add: box.


game board put: (Floor new) X:1 Y:1.
game board put: (Floor new) X:2 Y:1.
game board put: (Floor new) X:3 Y:1.
game board put: (Floor new) X:4 Y:1.
game board put: (Floor new) X:5 Y:1.
box x:2.
box y:1.
game player x: 1.
game player y: 1.

"P B F F F"
self assert: (game atX: 1 Y: 1) class equals: Player. 
self assert: (game atX: 2 Y: 1) class equals: Box. 
self assert: (game atX: 3 Y: 1) class equals: Floor. 

game movePlayer: Direction right.
"F P B F F"
self assert: (game atX: 1 Y: 1) class equals: Floor. 
self assert: (game atX: 2 Y: 1) class equals: Player. 
self assert: (game atX: 3 Y: 1) class equals: Box. 

box2 := Box new.
box2 x: 4.
box2 y: 1.
game boxes add: box2.
"F P B B F"
self assert: (game atX: 1 Y: 1) class equals: Floor. 
self assert: (game atX: 2 Y: 1) class equals: Player. 
self assert: (game atX: 3 Y: 1) class equals: Box. 
self assert: (game atX: 4 Y: 1) class equals: Box. 
self assert: (game atX: 5 Y: 1) class equals: Floor. 
game movePlayer: Direction right.
self assert: (game atX: 1 Y: 1) class equals: Floor. 
self assert: (game atX: 2 Y: 1) class equals: Player. 
self assert: (game atX: 3 Y: 1) class equals: Box. 
self assert: (game atX: 4 Y: 1) class equals: Box. 
self assert: (game atX: 5 Y: 1) class equals: Floor. 


