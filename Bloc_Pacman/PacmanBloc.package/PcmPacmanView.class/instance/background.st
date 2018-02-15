accessing
background
	^ BlBackground builder
		paint: Color transparent;
		image:
			((Form fromFileNamed: './pacman_images/pacman-' , lastDirection direction , tick asString , '.png')
				magnifyBy: 1.4);
		opacity: 1;
		build