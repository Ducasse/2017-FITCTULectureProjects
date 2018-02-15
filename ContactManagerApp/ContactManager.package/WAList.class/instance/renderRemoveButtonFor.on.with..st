rendering
renderRemoveButtonFor: anEntity on: html with: callback
	html tbsButton
		beDanger;
		callback: [ | c |
			c := self confirm: 'Are you sure?'.
			c
				ifTrue: callback.
			c
				ifTrue: self rebind ];
		with: 'Remove'