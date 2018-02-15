accessing
boxAtX: x_ Y: y_
boxes do:[ :b | (((b x) = x_) & ((b y) = y_)) ifTrue: [ ^ b] ].
^nil.