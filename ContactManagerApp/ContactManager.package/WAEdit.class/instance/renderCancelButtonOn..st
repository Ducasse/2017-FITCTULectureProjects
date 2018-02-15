rendering
renderCancelButtonOn: html
	html anchor
		class: 'btn btn-danger';
		callback: [ self answer: nil ];
		with: 'Cancel'