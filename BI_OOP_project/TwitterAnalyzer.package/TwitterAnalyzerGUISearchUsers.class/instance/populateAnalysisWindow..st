accessing
populateAnalysisWindow: anAnalysis
	"analysisWindow text: (Analysis of: timeline) asString."
	radioButtonDetailedView state
		ifTrue: [ analysisWindow text: (anAnalysis printWith: VisitorDetailedPrinter new). ]	
		ifFalse: [ analysisWindow text: (anAnalysis printWith: VisitorPrinter new). ].