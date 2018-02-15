physics
dragForce
	"Fd = (1/2) * (v^2) * (density * crossSection * dimensionlessdrag)"
	^self speed negated * self speed * self drag / 2