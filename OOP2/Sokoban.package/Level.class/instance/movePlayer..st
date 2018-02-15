modifying
movePlayer: dir
|nextCell newX newY|

newX := (player x) + (dir x).
newY := (player y) + (dir y).

nextCell := self atX: newX Y: newY.
(nextCell isNil) ifTrue: [ ^false ].

(nextCell isVisitable) ifTrue:[
	player x: newX.
	player y: newY.
	^true.
].
 
(nextCell isMemberOf: Box ) ifTrue: [ 
	(self moveBox: nextCell  dir: dir ) ifTrue: [ 
		player x: newX.
		player y: newY.
		^true.
	].
].
^false.

