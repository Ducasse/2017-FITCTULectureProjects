resetting
reset
	self tiles do: [ :tile |
			tile found: false.
			tile onPath: false.
			tile ending: false.
			tile starting: false.
			tile mapTile selected: false.
		 ].
		
	start := nil.
	end := nil.