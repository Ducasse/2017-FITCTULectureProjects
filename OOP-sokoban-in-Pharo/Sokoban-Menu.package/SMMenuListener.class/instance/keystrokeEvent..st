events handling
keystrokeEvent: anEvent
	"| score |
	
	anEvent char = Character arrowLeft
		ifTrue: [ 
			score := buttons gameInstance moveLeft .
			buttons changeScore: score.
			^ true   
			].

	anEvent char = Character arrowRight
		ifTrue: [ 
			score := buttons gameInstance moveRight .
			buttons changeScore: score.
			^ true   
			].
	
	anEvent char = Character arrowUp
		ifTrue: [ 
			score := buttons gameInstance moveUp.
			buttons changeScore: score.
			^ true   
			].
		
	anEvent char = Character arrowDown
		ifTrue: [ 
			score := buttons gameInstance moveDown.
			buttons changeScore: score.
			^ true   
			].
" 