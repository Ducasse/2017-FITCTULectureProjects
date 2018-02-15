tests
testStartRequest
	| response |
	
	response := self sendStartRequest.
	
	self assert: (response includesKey: 'name').
	self assert: (response includesKey: 'color')