example
defaultSpec
	^ SpecRowLayout composed
		newColumn:
			(SpecLayout composed
				newRow: #searchModel height: self toolbarHeight;
				add: #listModel top: self toolbarHeight) width: 200;
				
		newColumn: #detailModel;
		yourself