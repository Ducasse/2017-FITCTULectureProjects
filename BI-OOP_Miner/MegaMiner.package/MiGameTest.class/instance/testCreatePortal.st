tests-actions
testCreatePortal
	| game |
	game := MiGame new.

	"Cannot create portal on surface"
	game createPortal.
	self assert: game map portal target equals: game map portal base.
	
	game miner position: 2 @ 2.
	game createPortal.
	self assert: game map portal target equals: game miner position