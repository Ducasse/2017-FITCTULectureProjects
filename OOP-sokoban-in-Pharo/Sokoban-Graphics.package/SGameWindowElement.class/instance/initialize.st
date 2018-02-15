elements initialization
initialize
	space := BlSpace new
		extent: (self mapMaxXSize * 48 + self menuXSize) @ (self mapMaxYSize * 48 + self textStripYSize);
		title: 'Fitoban beta';
		resizable: false.