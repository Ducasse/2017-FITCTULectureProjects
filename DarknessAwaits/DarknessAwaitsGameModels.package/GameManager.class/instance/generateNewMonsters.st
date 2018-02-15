as yet unclassified
generateNewMonsters

	1 to: 4 do: [ :i |
		monsters add: (Monster generateFrom: (monstersDB at: (monstersDB size atRandom) asString) withLevel: level).
    ].
	