tests
testIsBoxAt
|game box|

game := Level new.
box := Box new.
box x: 2.
box y: 3.

game boxes add: box.

self assert: (game isBoxX: 2 Y: 3)  equals: true. 
self assert: (game isBoxX: 1 Y: 1)  equals: false.