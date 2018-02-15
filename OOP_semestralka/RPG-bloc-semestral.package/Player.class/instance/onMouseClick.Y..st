events
onMouseClick: x Y: y
|M mapfield|

(self hasNoMonster)
	ifTrue: [ ^false ].

((self gameBoard) isOutOfRange: x Y: y)
	ifTrue: [ ^false ].
	
M := self peekCurrentlyPlayingMonster.

"Transcript show: 'trying to move from ', M getpositionWithinArray printString , ' to ' , x asString, ' ',  y asString; cr" 

"If there is a monster on where we clicked"
mapfield := ((self gameBoard) mapField: x Y: y).
((mapfield) hasMonsta)
	ifTrue: [ 
		"There is monster / si aquí es el monstruo"
		"If this player owns the monster"
		(self ownsMonster: ((mapfield) monsta))
		ifTrue: [ 
			Transcript show: ((self textDatabase) messageByKeyword: 'INVALID_MOVE'); cr.
			^false
			 ].
		
		"Else, the monster is enemy monster, check if we can attack it"
		(M canAttack: ((mapfield) monsta))
		ifTrue: [ 
			"Attack / Ataque"
			M attackMonster: ((mapfield) monsta).
			^true.
			 ].
		 ].

(M canMoveTo: x Y: y)
ifFalse: [ 
	Transcript show: ((self textDatabase) messageByKeyword: 'INVALID_MOVE'); cr.
	^false ].
	
M moveTo: x y: y.
"Transcript show: 'moved to'; cr."
^true.
