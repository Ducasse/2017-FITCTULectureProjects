tests
testhash
	| bookBag |
	bookBag := Bag new.
	1 to: 500 do: [ :dummy | 
		bookBag
			add:
				(Book
					title: 'nineteen-eighty-four'
					author: 'George Orwell'
					genre: 'Dystopian Novel'
					isbn: 'ISBN-2525633342'
					year: '1920') ].
	self assert: bookBag size equals: 500