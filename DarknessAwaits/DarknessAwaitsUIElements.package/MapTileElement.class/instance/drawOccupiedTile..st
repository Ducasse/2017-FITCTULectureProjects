initialization
drawOccupiedTile: aCanvas
	| form |

	form := (Form fromFileNamed: self mapTile gameCharacter picturePath asString).
	
	"paint and not fill?"
	aCanvas fill
		paint: (aCanvas bitmap fromForm: form);
		path: (5@5 extent: 37@37);
		draw.