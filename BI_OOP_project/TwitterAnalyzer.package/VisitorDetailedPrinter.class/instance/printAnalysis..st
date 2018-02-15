printing
printAnalysis: anAnalysis
	^ String streamContents: [ 
		:stream |
					stream << 'Count: '; tab; tab; tab; tab; tab; tab; << anAnalysis count; crlf.
					stream << '----------------------------------------------------------'; crlf.
					stream << 'Min word count: '; tab; tab; tab; tab; << anAnalysis minWordCount asString; crlf.
					stream << 'Max word count: '; tab; tab; tab; tab; << anAnalysis maxWordCount asString; crlf.
					stream << 'Avg word count: '; tab; tab; tab; tab; << (anAnalysis avgWordCount printShowingDecimalPlaces: 2); crlf.
					stream << '----------------------------------------------------------'; crlf.
					stream << 'Min character count: '; tab; tab; tab; << anAnalysis minCharacterCount asString; crlf.
					stream << 'Max character count: '; tab; tab; tab; << anAnalysis maxCharacterCount asString; crlf.
					stream << 'Avg character count: '; tab; tab; tab; << (anAnalysis avgCharacterCount printShowingDecimalPlaces: 2); crlf.
					stream << '----------------------------------------------------------'; crlf.
					stream << 'Hashtag count: '; tab; tab; tab; tab; << (anAnalysis tags size asString); crlf.
					stream << '% containing hashtags: '; tab; tab; << (anAnalysis containingTagsPercentage printShowingDecimalPlaces: 2); << '%'; crlf.
					stream << 'Link count: '; tab; tab; tab; tab; tab; << (anAnalysis links size asString); crlf.
					stream << '% containing links: '; tab; tab; tab; << (anAnalysis containingLinksPercentage printShowingDecimalPlaces: 2); << '%'; crlf.
					stream << '----------------------------------------------------------'; crlf.
					stream << 'Most frequent words: '; crlf.
					stream << (self printFrequentWords: anAnalysis).
					stream << '----------------------------------------------------------'; crlf.
					stream << 'Most frequent characters: '; crlf.
					stream << (self printFrequentCharacters: anAnalysis).
					stream << '----------------------------------------------------------'; crlf.
					stream << 'Hash tags #: '; crlf.
					stream << (self printHashTags: anAnalysis).
					stream << '----------------------------------------------------------'; crlf.
					stream << 'Links: '; crlf.
					stream << (self printLinks: anAnalysis).
	].