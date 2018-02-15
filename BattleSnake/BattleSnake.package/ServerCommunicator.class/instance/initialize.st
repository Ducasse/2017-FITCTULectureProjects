initialization
initialize
	serverConfig := ServerConfig default.
	algorithm := BFSMoveAlgorithm new.
	moveHandler := MoveHandler use: algorithm.
	startResponse := PlayerInfo default.