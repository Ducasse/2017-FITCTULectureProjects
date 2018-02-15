tests-actions
testInteract
	| holder miner |
	
	miner := MiMiner new.
	holder := MiBlockHolder with: (MiSurfaceBlock new).
	
	self assert: ((holder interact: miner) class includesBehavior: MiInteractResponse) .
	