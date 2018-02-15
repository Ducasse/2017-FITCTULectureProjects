getSet
addMonster: M
	"adds monter for player. It is put to end of play queue for simplicity"
	monsterQueue addLast: M.
	M playerOwner: self