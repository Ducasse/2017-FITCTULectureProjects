tests
testCreateFromRequest
	|g snakeDict s|
	
	snakeDict := Dictionary new.
	snakeDict at: #coords put: { #[1 2]. #[3 4] }.
	snakeDict at: #health_points put: 100.
	snakeDict at: #id put: 'ab-54a'.
	snakeDict at: #name put: 'pharoguy'.
	snakeDict at: #taunt put: 'git better'.	
	
	s:= Snake fromDictionary: snakeDict .
	
	g:= GameInfo fromRequest: (MoveRequest new 
		snakes: { snakeDict };
		dead_snakes: {  };
		food: { #[4 5] } ; "remember, we add 1 to each coordinates to simplify indexing"
		game_id: 233;
		height: 20;
		width: 20;
		turn: 1;
		you: 'ab-54a';
		yourself ).
		
	self assert: g snakes first name equals: s name.
	self assert: g dead_snakes equals: {}.
	self assert: g food equals: { 5@6 }.
	self assert: g turn equals: 1.
	self assert: g height  equals: 20.
	self assert: g width equals: 20.
	self assert: g player id equals: s id.
	