instance creation
start
	| space |
	space := BlSpace new.
	space title: 'Minesweeper';
		resizable: false.
	self onSpace: space.
	space show.
	