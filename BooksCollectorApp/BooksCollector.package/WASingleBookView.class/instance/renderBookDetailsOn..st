rendering
renderBookDetailsOn: html
	html div
		class: 'leftForm';
		with: 'Title: '.
	html div
		class: 'rightForm';
		with: book title.
	html
		break;
		break.
	html div
		class: 'leftForm';
		with: 'Author: '.
	html div
		class: 'rightForm';
		with: book author.
	html
		break;
		break.
	html div
		class: 'leftForm';
		with: 'Genre: '.
	html div
		class: 'rightForm';
		with: book genre.
	html
		break;
		break.
	html div
		class: 'leftForm';
		with: ' ISBN: '.
	html div
		class: 'rightForm';
		with: book isbn.
	html
		break;
		break.
	html div
		class: 'leftForm';
		with: ' Year: '.
	html div
		class: 'rightForm';
		with: book year