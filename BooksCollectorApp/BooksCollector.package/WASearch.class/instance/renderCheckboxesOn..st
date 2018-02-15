rendering
renderCheckboxesOn: html
	html text: 'Title: '.
	html checkbox
		callback: [ :value | searchRequest inTitle: value ];
		value: searchRequest inTitle.
	html text: 'Author: '.
	html checkbox
		callback: [ :value | searchRequest inAuthor: value ];
		value: searchRequest inAuthor.
	html text: 'Genre: '.
	html checkbox
		callback: [ :value | searchRequest inGenre: value ];
		value: searchRequest inGenre.
	html text: 'Year: '.
	html checkbox
		callback: [ :value | searchRequest inYear: value ];
		value: searchRequest inYear.
	html text: 'ISBN: '.
	html checkbox
		callback: [ :value | searchRequest inIsbn: value ];
		value: searchRequest inIsbn.
