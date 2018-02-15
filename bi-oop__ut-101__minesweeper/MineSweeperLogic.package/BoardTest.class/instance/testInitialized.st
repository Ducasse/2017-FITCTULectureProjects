tests
testInitialized
	| b |
	b:= Board new.
	b apiGenerateEmptyBoardX: 5 Y: 5 Mines: 3.
	
	self assert: (b initialized ) equals: false.
		
	b apiOpenAtX: 1 Y: 1.
	 
	self assert: (b initialized ) equals: true.