accessing
announcer
	"Returns or creates an announcer"
	^ announcer ifNil: [ announcer := Announcer new ]