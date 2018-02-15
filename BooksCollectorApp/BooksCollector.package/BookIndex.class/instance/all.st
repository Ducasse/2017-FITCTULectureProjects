accessing
all
	| resCollection |
	resCollection := innerCollectionType new.
	byIsbn values do: [ :eachColl | resCollection addAll: eachColl ].
	^ resCollection