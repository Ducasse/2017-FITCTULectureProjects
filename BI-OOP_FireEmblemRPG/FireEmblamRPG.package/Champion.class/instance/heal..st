operations
heal: aChampion
		aChampion actualHP: (actualHP + (self level abilities attack)).
		(aChampion actualHP > (aChampion level abilities health))
		ifTrue: [aChampion actualHP: (aChampion level abilities health)].
		^('Champion ',(self name),' healed ',aChampion name,' for +',(self level abilities attack) asString,Character cr asString,'Champion ', aChampion name,' has ',aChampion actualHP asString,' / ',aChampion level abilities health asString).
		