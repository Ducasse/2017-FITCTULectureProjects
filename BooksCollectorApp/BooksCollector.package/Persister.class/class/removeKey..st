persistence
removeKey: aKey
	"delete the object stored at aKey from persistent storage"
	
	self storage removeKey: aKey ifAbsent: [ ]