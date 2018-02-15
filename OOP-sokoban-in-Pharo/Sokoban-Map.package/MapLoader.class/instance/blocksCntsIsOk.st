validation
blocksCntsIsOk
	^ (((( blocks at: $K ) - (( blocks at: $T ) + ( blocks at: $R ))) = 0 )
		and: [ ((( blocks at: $P ) + ( blocks at: $R )) = 1 ) ] ) .
