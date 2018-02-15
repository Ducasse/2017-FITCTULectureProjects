accessing - icons
tilesetIcon
	"Private - Generated method"
	^icons 
			at: #tilesetIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self tilesetIconContents readStream) ].