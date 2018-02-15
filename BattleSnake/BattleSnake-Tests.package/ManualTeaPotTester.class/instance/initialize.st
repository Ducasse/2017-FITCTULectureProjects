initialization
initialize
	|request move |

	teapot := Teapot configure: {
    #defaultOutput -> #json. 
    #port -> 8080. 
    #debugMode -> true.
    #bindAddress -> #[127 0 0 1].
	}. 

teapot 
	POST: '/start' -> [ :r |  |json|	
		json:= r entity contents.
		request := StartRequest createFromJson: json.
		PlayerInfo new color: 'gold';
			name: 'petr'.		
		]; output: #json;
	POST: '/move' -> [ :r |  |json|	
		
		json:= r entity contents.
		move := MoveRequest  createFromJson: json.		
		MoveResponse  new move: 'left'; taunt: 'git gud'.						
		]; output: #json.
	
	