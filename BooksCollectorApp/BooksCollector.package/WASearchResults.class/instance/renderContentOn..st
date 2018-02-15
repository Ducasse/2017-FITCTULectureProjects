rendering
renderContentOn: html
	html
		text: 'WABookListView';
		break.
	html select
		list: #(10 20 50 100);
		selected: 10;
		callback: [ :value |  ].
	html
		break;
		render: bookList