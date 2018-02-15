validation
precheckLine: aLine
	( aLine = nil or: [ aLine size < 3 or: [ ( aLine at: 2 ) ~= $: ]] )
		ifTrue: [ ^ nil ] .
	^ aLine at: 1 .
