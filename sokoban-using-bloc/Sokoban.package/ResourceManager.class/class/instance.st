accessing
instance
	"get the singleton instance (and create one if needed)"

	^ instance
		ifNil: [ instance := self basicNew.
			instance loadGfxResources ]