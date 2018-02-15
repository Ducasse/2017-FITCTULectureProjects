accessing
getResource: aString
	"Returns loaded resource from resourceDictionary"

	"removed lazy init for now, loadGfxResource is called during instance creation"
	"resources ifNil: [ self loadGfxResources ]."

	^ resources at: aString