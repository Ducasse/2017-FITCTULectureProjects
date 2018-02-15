initialization
initialize
	"Creates the application's root directory!!"
	super initialize.
	self rootPath: (self class defaultRootPath) / 'books-collector'.
	[ self rootPath createDirectory ] on: DirectoryExists do: [  ].