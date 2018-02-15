converting
asString
	^ String streamContents: [ 
		:stream |
					stream << 'Count: '; tab; tab; tab; tab; tab; tab; << self count; crlf.
					stream << '----------------------------------------------------------'; crlf.
					stream << 'Min word count: '; tab; tab; tab; tab; << self minWordCount asString; crlf.
					stream << 'Max word count: '; tab; tab; tab; tab; << self maxWordCount asString; crlf.
					stream << 'Avg word count: '; tab; tab; tab; tab; << (self avgWordCount printShowingDecimalPlaces: 2); crlf.
					stream << '----------------------------------------------------------'; crlf.
					stream << 'Min character count: '; tab; tab; tab; << self minCharacterCount asString; crlf.
					stream << 'Max character count: '; tab; tab; tab; << self maxCharacterCount asString; crlf.
					stream << 'Avg character count: '; tab; tab; tab; << (self avgCharacterCount printShowingDecimalPlaces: 2); crlf.
					stream << '----------------------------------------------------------'; crlf.
					stream << 'Hashtag count: '; tab; tab; tab; tab; << (self tags size asString); crlf.
					stream << '% containing hashtags: '; tab; tab; << (self containingTagsPercentage printShowingDecimalPlaces: 2); << '%'; crlf.
					stream << 'Link count: '; tab; tab; tab; tab; tab; << (self links size asString); crlf.
					stream << '% containing links: '; tab; tab; tab; << (self containingLinksPercentage printShowingDecimalPlaces: 2); << '%'; crlf.
					stream << '----------------------------------------------------------'; crlf.
					stream << 'Most frequent words: '; crlf.
					stream << self printFrequetnWords .
					stream << '----------------------------------------------------------'; crlf.
					stream << 'Most frequent characters: '; crlf.
					stream << self printFrequentCharacters.
					stream << '----------------------------------------------------------'; crlf.
					stream << 'Hash tags #: '; crlf.
					stream << self printHashTags.
					stream << '----------------------------------------------------------'; crlf.
					stream << 'Links: '; crlf.
					stream << self printLinks; crlf; crlf.
	].