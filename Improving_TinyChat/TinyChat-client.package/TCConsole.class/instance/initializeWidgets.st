initialize-release
initializeWidgets
	list := ListModel new.
	input := TextInputFieldModel new
		enabled: true;
		acceptBlock: [ :string | 
			chat send: string.
			input text: '' ];
	ghostText: 'Type your message here...'.
	self focusOrder
		add: input.