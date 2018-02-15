initialization
getLogo
	^ BlElement new 
		size: MiBlockSize;
		relocate: 50@0;
		background: (BlImageBackground image: MiLogo)