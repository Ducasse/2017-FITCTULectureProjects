specs
buildWithSpec
	^ SpecColumnLayout composed
		add: #grid height: 200;
		addSplitter;
		add: #detail;
		yourself