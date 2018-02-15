tests
testPlayerAt
|game|

game := Level new.
game player x: 2.
game player y: 3.

self assert: (game isPlayerX: 2 Y: 3)  equals: true. 
self assert: (game isPlayerX: 1 Y: 1)  equals: false.