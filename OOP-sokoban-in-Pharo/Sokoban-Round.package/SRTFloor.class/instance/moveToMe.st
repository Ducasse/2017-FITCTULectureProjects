querying
moveToMe
	"can player move to floor?"

	| maybe yes |
	
	"maybe means: box blocking us"
	maybe := 2.
	yes := 3.
	(objectOnMe isMemberOf: SRMOBox)
		ifTrue: [ ^ maybe ]
		ifFalse: [ ^ yes ]