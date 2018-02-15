event dispatching
onSelectFire: aSelected
	onSelectListener do: [ :l | l cull: self cull: aSelected ]