printing
printOn: aStream

newRound 	ifTrue: [  
			aStream nextPutAll: 'A new round has begun'
		] 
			ifFalse: [  
				
aStream nextPutAll: unit nickname;

nextPutAll: ((spell isNil) 
	ifFalse: [ (self printCast: (self spell) on: (self target)) asString. ] 	
	ifTrue: [ guard isNil		
		ifFalse: [ (self printGuard: (self guard) on: (self target)) asString. ] 	
		ifTrue: [ damage > 0 
			ifFalse: [ (self printUnsuccessfulHit: target) asString. ]
			ifTrue: [  
				(self printSuccessfulHit: target for: damage) asString.
			].
		].
	] );

"Granted that the unit passed to this message is already updated, else we will update it's HP here"
cr. 

damage ifNotNil: [ 
(target hp - damage) <= 0
	ifTrue: [ aStream nextPutAll: (self printDeath: target) asString; cr.]
] ].