action
deleteReader
	readersList selectedItem isNil ifFalse: [
		| index |
		index:= readersList selectedIndex.
		(self readerWithZeroBooks)
		ifTrue: [
			ZnClient new
 				url: self url, '/readers/', readersList selectedItem id asString;
 				delete.
			deleteButton icon: nil.]
		ifFalse: [ deleteButton icon: (self iconNamed: #error) ].
		self refreshReaderList.
		readersList setSelectedIndex: index.
	].