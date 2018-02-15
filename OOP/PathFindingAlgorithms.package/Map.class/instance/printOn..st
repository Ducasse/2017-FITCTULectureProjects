printing
printOn: aStream
data do: [ :row | 
			row do: [ :tile | tile printOn: aStream ].
			Character cr putOn: aStream.
			Character lf putOn: aStream.
	 ]