actions
loadGfxResources
	"Loads all image resources from res/gfx and saves them in resources dictionary"

	resources := Dictionary new.
	(self resourceDirectory / 'gfx') allChildren
		do: [ :each | 
			(each isFile and: (each basename endsWith: '.png'))
				ifTrue: [ resources
						at: (each basename copyWithRegex: '.png$' matchesReplacedWith: '')
						put: (self class imageFromFile: each) ] ]