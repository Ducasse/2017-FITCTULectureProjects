rendering
renderContentOn: html
	html div
		class: 'content';
		with: [ html text: 'WABookFrom:'.
			self renderSeparatorON: html.
			self renderBookDetailsOn: html ]