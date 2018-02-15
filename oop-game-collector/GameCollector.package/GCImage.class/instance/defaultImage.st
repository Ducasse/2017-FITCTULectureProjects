accessing
defaultImage
	defaultImage ifNil: [
	defaultImage := ZnEasy getPng: 'http://media.comicbook.com/files/img/default-movie.png'.  ].
	^ defaultImage