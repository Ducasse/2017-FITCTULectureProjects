accessing
testSetPublisher

|book|
book := Book new.
book publisher: 'Albatros'.

self assert: book publisher equals: 'Albatros'.