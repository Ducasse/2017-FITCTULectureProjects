accessing-system
imageName
	^ String
		streamContents: [ :stream | stream << self imageDirectoryName << $/ << 
			model unitType unitName <<
			model playerOwner race << $/ <<
			model unitType unitName <<
			model playerOwner race
			<< $- << phase << '.png' ]