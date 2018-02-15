tests
testCreateAtSquareWithOwnerOfTypeWithHpWithXp
	"comment stating purpose of message"


|mage archer warrior
mageSq archerSq warriorSq
playerAI playerHuman 
|

playerAI:= PlayerAI new.
playerHuman := PlayerHuman  new.
mageSq := 1@1.
archerSq  := 2@1.
warriorSq  := 3@2.

mage := Unit createAtSquare: mageSq withOwner: playerAI  ofType: 6 withHp: 15 withXp: 1.
warrior  := Unit createAtSquare: warriorSq   withOwner: playerHuman  ofType: 4 withHp: 17 withXp: 4.
archer := Unit createAtSquare: archerSq  withOwner: playerHuman  ofType: 5 withHp: 14 withXp: 3.



self assert: (mage square ) equals: 1@1.
self assert: (archer square ) equals: 2@1.
self assert: (warrior  square ) equals: 3@2.

self assert: (mage playerOwner ) equals: playerAI .
self  assert: (archer playerOwner ) equals: playerHuman  .
self assert: (warrior  playerOwner ) equals: playerHuman  .
	