accessing
background
	tick := (tick + 1) \\ (maxTick + 1).	"when i tried this at method move, Pharo froze on saving the change :) "
	^ BlBackground builder
		paint: Color transparent;
		image:
			((Form fromFileNamed: './pacman_images/ghost', self getCurrentBackground  ,'_' , lastDirection direction , '1' , '.png')
				magnifyBy: 1.4);
		opacity: 1;
		build