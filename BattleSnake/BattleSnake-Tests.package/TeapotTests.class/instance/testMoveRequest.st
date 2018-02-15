tests
testMoveRequest
	| moveResponse |
	
	self sendStartRequest.
	moveResponse := self sendMoveRequest.
	
	self assert: (moveResponse includesKey: 'move').
	self assert: (moveResponse includesKey: 'taunt')