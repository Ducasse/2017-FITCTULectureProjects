tests
testChangeState
	"test if player cant move after gamestate is changed and can move after it is change again"
	| game tmp cur|
	game := MiGame new.
	
	tmp := game miner position.
	game performMove: MiDirectionRight new.
	cur := game miner position.
	self assert: (tmp = cur) not.	"should move"
		
	tmp := game miner position.
	game changeState.			"<--- should NOT move"
	game performMove: MiDirectionRight new.
	cur := game miner position.
	self assert: (tmp = cur).	"should NOT move"
		
	tmp := game miner position.
	game changeState.				"<--- should move"
	game performMove: MiDirectionRight new.
	cur := game miner position.
	self assert: (tmp = cur) not.	"should move"