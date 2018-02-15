properties
canAttack: aMonster
"Whether can attack target monster
Si puede atacar al monstruo objetivo
"
|squaresAround|

(self isRanged)
ifTrue: [ ^true ].

"he is meele"
squaresAround := ((self gameBoard) squaresAround: positionWithinArray).

"check, if the target monster is around this one
pregunte, que el monstruo objetivo es alrededor de este
"
(squaresAround includes: (aMonster positionWithinArray))
ifTrue: [ "we can attack / podemos atacar" 
	^true
	 ].
^false