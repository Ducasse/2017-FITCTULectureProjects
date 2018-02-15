writing
write: aMap
filePath asFileReference writeStreamDo: [ :stream | aMap printOn: stream].