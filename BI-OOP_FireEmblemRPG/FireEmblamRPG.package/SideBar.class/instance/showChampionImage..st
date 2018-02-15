accessing
showChampionImage: aPath

	| builder element|
	builder := BlBackground builder image: 
	(ImageReadWriter formFromFileNamed: (IceRepository registry first location / 'img' / aPath) );
	build.
	
	element := BlElement new
		size: 400@200;
		relocate: 100 @ 100;
		geometry: (BlRectangle cornerRadius: 10);
		background: builder;
		yourself.
	
	container addChild: element.