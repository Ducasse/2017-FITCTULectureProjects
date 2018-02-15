accessing
populateAnalysisWindow: bundle
	analysisOutputWindow text: ((Analysis of: bundle) printWith: VisitorDetailedPrinter new).