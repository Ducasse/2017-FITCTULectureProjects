querying
isHealer

(healerPts > dpsPts) ifTrue: [ 
	(healerPts > tankPts) ifTrue: [ 
		(healerPts >= magePts) ifTrue: [ 
			^ true.
		].
	].	
]. 
^false.