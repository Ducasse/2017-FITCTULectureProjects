comparing
= aSquare
"position should be unique for each square"
aSquare class = self class ifFalse: [ ^ false ].
^(aSquare getPosition = position).