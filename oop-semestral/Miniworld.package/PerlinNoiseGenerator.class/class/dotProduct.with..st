accessing
dotProduct: vec1 with: vec2
	^(vec1 with: vec2 collect: [ :x1 :x2 | x1 * x2  ]) inject: 0 into: [ :sum :i | sum + i ]. 