as yet unclassified
getTimelineCnt: aCnt
	^ TwitterAnalyzer instance searchTimelineOfUser: self screenName text count: aCnt chosenCntToRetrieve. 