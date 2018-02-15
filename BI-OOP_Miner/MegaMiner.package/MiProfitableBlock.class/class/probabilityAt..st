accessing
probabilityAt: aDepth
| layers begin end center|
layers := MiProfitableBlock subclasses size * 2 + 4.
begin := self spawnLayer * 2 /layers.
end := self spawnLayer * 2 + 6 /layers.
center := self spawnLayer * 2 + 3 /layers.
^ aDepth < begin ifTrue:[0] ifFalse:[
			aDepth > end ifTrue:[0] ifFalse:[ ^ 1 - ((center - aDepth) abs /(end - begin))]]
	
	
