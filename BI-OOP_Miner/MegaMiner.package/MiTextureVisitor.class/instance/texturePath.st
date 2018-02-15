accessing text
texturePath
	"platform independent texture loading, on WIN delimiters are \, on macOS /..."
	"older code: OSPlatform current isMacOS ifTrue: [ path := '/textures/' ]."
	^ FileSystem disk delimiter asString, 'textures', FileSystem disk delimiter asString