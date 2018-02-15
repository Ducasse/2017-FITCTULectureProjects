tests
testRandomAttackBattle
	"comment stating purpose of message"

	| boj u1 u2 v1 v2 |
	boj := Battle new.
	
	"jednotka A ma 2 akce za kolo, ale mensi utok a obranu."
	u1 := Unit withName: 'Adolf'.
	u1 stepDeleg: (RandomAttackStep withOwner: u1).
	u1 atk: 7.
	u1 def: 2.
	u1 ap: 2.
	u1 spd: 5.
	
	self assert: u1 nickname equals: 'Adolf the Unpredictable Urchin'.
	self assert: u1 atk equals: 7.
	self assert: u1 def equals: 2.
	self assert: u1 ap equals: 2.
	self assert: u1 spd equals: 5.

	"Jednotka B je unremarkable default human."
	u2 := Unit withName: 'Berry'.
	u2 stepDeleg: (RandomAttackStep withOwner: u2).

	"1 je v podstate tank."
	v1 := Unit withName: 'Zikmund'.
	v1 stepDeleg: (RandomAttackStep withOwner: v1).
	v1 atk: 5.
	v1 def: 7.
	v1 hp: 10.
	v1 spd: 2.
	
	v2 := Unit withName: 'Yvanhoe'.
	v2 stepDeleg: (RandomAttackStep withOwner: v2).
	
	boj addUnit: u1 toTeam: 1.
	boj addUnit: u2 toTeam: 1.
	boj addUnit: v1 toTeam: 2.
	boj addUnit: v2 toTeam: 2.
	UnitResolver myTeam: (boj team1) enemyTeam: (boj team2).
	boj startAIFight.