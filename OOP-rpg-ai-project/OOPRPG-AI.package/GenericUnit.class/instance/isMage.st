querying
isMage

(magePts > dpsPts) ifTrue: [ 
	(magePts > tankPts) ifTrue: [ 
		(magePts >= healerPts) ifTrue: [ 
			^ true.
		].
	].	
]. 
^false.