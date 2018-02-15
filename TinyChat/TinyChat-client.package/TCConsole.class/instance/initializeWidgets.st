initialize-release
initializeWidgets
	list := ListModel new.
	button := self newButton.
	button label: 'Send'.
	input := TextInputFieldModel new
		enabled: true;
		acceptBlock: [ :string | 
			chat send: string.
			input text: '' ];
	ghostText: 'Type your message here...'.
	button action: [ input accept ].
	self focusOrder
		add: input;
		add: button