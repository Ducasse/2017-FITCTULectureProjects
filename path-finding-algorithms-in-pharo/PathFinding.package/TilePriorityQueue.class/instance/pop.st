actions
pop
	"Returns the tile from the queue with the least distance from startTile."
	| best |
	best := self first.
	self do: [ :tile |
			((distances at: tile) < (distances at: best))
				ifTrue: [ best := tile. ]
		].
	
	self linksDo: [ :link |
			(link value) == best
				ifTrue: [ self removeLink: link ]
		 ].
	
	^ best
