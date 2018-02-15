tests-actions
testInteractWithBlock
	| game map randomBlock |
	game := MiGame new.
	map := game map.
	
	
	10 timesRepeat: [
		randomBlock := (map width)@(map height).
		self assert: ((map interact: game miner withBlock: randomBlock) class includesBehavior: MiInteractResponse) .
		].