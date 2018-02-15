accessing
resourceDirectory
	"Get directory containing resources. 
	Locates the directory and stores its location during first invocation."

	| repo |
	^ resourceDir
		ifNil: [ "find where the repository is in local filesystem"
			repo := nil.
			IceRepository allInstances
				do: [ :each | 
					each name = 'sokoban-using-bloc'
						ifTrue: [ repo := each ] ].
			repo ifNil: [ self error: 'Resource directory not found.' ].
			resourceDir := repo location / 'res' ]