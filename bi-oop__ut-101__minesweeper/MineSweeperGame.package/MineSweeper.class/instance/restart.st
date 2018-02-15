running
restart
	restart := true.
	self setGameX: (board x) y: (board y) mines: (board mines).
	self start.
	ui time: 0.
	self refreshBoard.