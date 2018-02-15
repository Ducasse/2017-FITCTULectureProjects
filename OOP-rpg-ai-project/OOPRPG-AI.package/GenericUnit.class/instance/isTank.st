querying
isTank

(tankPts > dpsPts) ifTrue: [ 
	(tankPts > healerPts) ifTrue: [ 
		(tankPts > magePts) ifTrue: [ 
			^ true.
		].
	].	
]. 
^false.