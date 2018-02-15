generating
generateUnderground: aDepth
	| probabilities random sum |
	"Answers a random underground block depending on the depth (class, not instance)"
		
	"More detailed description - Make a random choice, whether the next block will be profitable 
	 or not profitable. The probability of spawning the profitable block increases with growing depth. 
	 Each block has it's own probability of being spawned at given depth. We collect all
	 of these probabilities and create a dictionary with block -> probability pairs"
	probabilities := (generator next < (aDepth / self defaultHeight * (1 / 10) + 0.1)
		ifTrue: [ MiProfitableBlock subclasses ]
		ifFalse: [ MiNotProfitableBlock subclasses ])
		collect: [ :block | block -> (block probabilityAt: aDepth / self defaultHeight) ].

	"Here we generate a random number in range [0, sum of blocks' probabilities)."
	random := generator next
		* (probabilities inject: 0 into: [ :subTotal :elem | subTotal + elem value ]).
	
	"And finally, we find a block that corresponds to the previously generated random number."	
	sum := 0.
	^ (probabilities
		detect: [ :elem | 
			sum := sum + elem value.
			sum > random ]) key