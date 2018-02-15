updating
update
	"I am called on every single frame. But I have no idea what to do."
	coroutines do: [ :cor | cor next ].
	self cleanCoroutines.