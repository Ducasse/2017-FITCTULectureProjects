as yet unclassified
getNeighbouringIndexes: aIndex
	| indexes |
	indexes := OrderedCollection new.
	indexes
		add: aIndex - self columnsCnt;
		add: aIndex + self columnsCnt;
		add: aIndex + 1;
		add: aIndex - 1.
	^ indexes