accessing
atX: x Y: y
(self isPlayerX:x Y:y) ifTrue: [ ^player ].
(self isBoxX:x Y:y) ifTrue: [ ^(self boxAtX: x Y: y) ].
^(board atX: x Y: y ).