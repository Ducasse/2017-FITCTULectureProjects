specs
defaultSpec
	^ SpecColumnLayout composed
		add: #menu height: self toolbarHeight;
		add: #grid height: 200;
		addSplitter;
		add: #detail;
		yourself