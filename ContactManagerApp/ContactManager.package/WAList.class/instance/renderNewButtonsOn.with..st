rendering
renderNewButtonsOn: html with: callback
	html
		tbsButtonGroup: [ html tbsButton
				beSuccess;
				callback: [ (self call: callback) ifNotNil: [ self rebind ] ];
				with: 'New' ]