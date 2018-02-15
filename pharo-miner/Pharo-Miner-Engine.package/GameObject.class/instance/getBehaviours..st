accessing
getBehaviours: aClass
	"Fetch all my behaviours with class or super class of aClass"
	^behaviours select: [ :each | each isKindOf: aClass]