tests
testAnalysis
	| tw1 tw2 tw3 tw4 tb list analysis |
	tw1 := Tweet new.
	tw2 := Tweet new.
	tw3 := Tweet new.
	tw4 := Tweet new.
	list := LinkedList new.
	list add: tw1; add: tw2; add: tw3; add: tw4.
	tb := TweetBundle fromList: list.
	
	analysis := Analysis of: tb.
	
	self assert: analysis class equals: Analysis.
	self testCnt: analysis.