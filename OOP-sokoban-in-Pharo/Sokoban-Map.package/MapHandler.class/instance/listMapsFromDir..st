listing
listMapsFromDir: aDir
	|tmpMaps maps|
	tmpMaps := (aDir children select: [ :each |
		(each basename endsWith: mapSuffix)
			and: [ each entry permissions isReadable
				and: [ each isFile ]]] ) .
	tmpMaps ifEmpty: [ ^ 'No map available.' ] .
	maps := Array new: tmpMaps size.
	1 to: tmpMaps size do: [ :i | maps at: i put: (tmpMaps at: i) basename ].
	^ maps.
