tests-actions
testCreatePortal
	|holder|
	holder := (MiBlockHolder with: MiUndergroundBlock new) .
	
	self assert: (holder block class == MiTeleportBlock ) not .
	holder createPortal  .
	self assert: holder block class == MiTeleportBlock  .