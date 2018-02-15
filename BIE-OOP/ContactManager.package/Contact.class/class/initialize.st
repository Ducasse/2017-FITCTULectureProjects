initialization
initialize
	defaultproperty := #(firstName lastName gender birthDate email address phone).
	defaultproperty do: [ :each | self compileProperty: each ].