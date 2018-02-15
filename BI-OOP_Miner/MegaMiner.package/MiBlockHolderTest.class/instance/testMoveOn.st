tests-actions
testMoveOn
	| holder miner game |
	game := MiGame new.
	miner := game miner.
	
	"miner move on surface block"
	holder := game map at: 2@1.
	(holder moveOn: miner).
	self assert: ((holder moveOn: miner) class includesBehavior: MiBlockMoveOnResponse  ).
	self assert: ((holder moveOn: miner) class == MiMoveResponse ).

	"miner move on underground block"
	holder := game map at: 1@2.
	(holder moveOn: miner).
	self assert: ((holder moveOn: miner) class includesBehavior: MiBlockMoveOnResponse  ).
	self assert: ((holder moveOn: miner) class == MiMoveAndMineResponse ).

	"miner move on MiRepairCenterBlock"
	holder := game map at: 5@1.
	(holder moveOn: miner).
	self assert: ((holder moveOn: miner) class includesBehavior: MiMoveResponse ).