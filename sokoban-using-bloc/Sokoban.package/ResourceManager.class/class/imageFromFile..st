utility
imageFromFile: aFile
	"Loads image from given file"

	| stream img |
	stream := aFile readStream.
	img := (ImageMorph fromStream: stream) form.
	stream close.
	^ img