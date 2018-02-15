tests-actions
testPerformMove
	| game lastPosition |
	
	game := MiGame new.	
	lastPosition := game miner position.
	game performMove: MiDirectionRight new.
	self assert: (lastPosition = game miner position) not.