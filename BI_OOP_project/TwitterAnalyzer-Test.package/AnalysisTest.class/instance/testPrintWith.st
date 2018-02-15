tests
testPrintWith
	| an |
	an := Analysis of: TweetBundle new.
	self assert: ((an printWith: (VisitorPrinter new)) howManyMatch: 'Count: 						0
----------------------------------------------------------
Min word count: 				0
Max word count: 				0
Avg word count: 				0.00
----------------------------------------------------------
Min character count: 			0
Max character count: 			0
Avg character count: 			0.00
----------------------------------------------------------
Hashtag count: 				0
% containing hashtags: 		0.00%
Link count: 					0
% containing links: 			0.00%
----------------------------------------------------------
Most frequent words: 
----------------------------------------------------------
Most frequent characters: 
----------------------------------------------------------
Hash tags #: 
----------------------------------------------------------
Links:
') > 100.