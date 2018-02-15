private
configureTeaPot
	teapot := Teapot configure: {
    #defaultOutput -> #json. 
    #port -> serverConfig port. 
    #debugMode -> true.
    #bindAddress -> serverConfig host.
	}. 
	
	teapot 
	"Probably, we do not need any informations from this request.	startRequest := StartRequest createFromJson: (r entity contents).
		startHandler handle: startRequest. "
	POST: '/start' -> startResponse ;
	POST: '/move' -> [ :r | |moveRequest|		
		moveRequest := MoveRequest createFromJson: (r entity contents).
		"given handler must return MoveResponse"
		moveHandler handle: moveRequest.
		]; output: #json.
	
	