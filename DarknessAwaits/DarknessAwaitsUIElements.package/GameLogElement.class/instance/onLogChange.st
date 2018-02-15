as yet unclassified
onLogChange
	self invalidate.
	list markDataSourceChangeDuringMeasure.
	list requestLayout.
	list smoothScrollBy: 50@50.
	