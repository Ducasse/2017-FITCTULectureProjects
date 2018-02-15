pages
setLinks
	| lin |
	lin := LinkedList new.
	
	(tweet includesKey: 'entities')
		ifTrue: [ 
						((tweet at: 'entities') includesKey: 'urls')
							ifTrue: [ 
								| array |
								array := (tweet at: 'entities') at: 'urls'.
								1 to: array size do: [ 
									:index |
									
									lin add: ((array at: index) at: 'expanded_url').
								].
								links := lin asArray.
							]
							ifFalse: [ links := #() ].		
					 ]
		ifFalse: [ links := #( ) ].
	^ self.