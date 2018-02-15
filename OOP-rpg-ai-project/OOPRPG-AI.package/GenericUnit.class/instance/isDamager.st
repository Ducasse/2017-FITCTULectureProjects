querying
isDamager

(dpsPts > tankPts) ifTrue: [ 
	(dpsPts > healerPts) ifTrue: [ 
		(dpsPts > magePts) ifTrue: [ 
			^ true.
		].
	].	
]. 
^false.