accessing
fromUrl: urlObject
	"from ZnEasy"

	| client |
	(client := ZnClient new
		beOneShot;
		yourself)
		url: urlObject asString;
		enforceHttpSuccess: true;
		get.
	^ ImageReadWriter formFromStream: client entity readStream