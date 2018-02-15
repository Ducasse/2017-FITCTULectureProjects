tests-actions
testRemovePortal
	|holder|
	holder := (MiBlockHolder with: MiUndergroundBlock new) .
	
	self assert: (holder block class == MiTeleportBlock ) not .
	holder createPortal.
	self assert: holder block class == MiTeleportBlock  .
	holder removePortal.
	self assert: (holder block class == MiTeleportBlock ) not .