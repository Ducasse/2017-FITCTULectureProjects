accessing
background
	^ BlBackground builder
		image:
			((Form fromFileNamed: './pacman_images/numbers.png')
				 copy: (Rectangle point: (number*18)@0 point: ((number+ 1)*18)@24 ));
		opacity: 1;
		build