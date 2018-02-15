printing
printHashTags: anAnalysis
	| tags |
	tags := anAnalysis tags.
	
	^ String streamContents: [ 
		:stream |
			tags doWithOccurrences: [ 
				:tag :cnt |
				stream << cnt asString; tab; tab; << '#'; << tag asString; crlf.				
				 ]
	].