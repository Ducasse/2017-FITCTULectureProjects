tests
testImage
| sprite renderer game img |
renderer := SpriteRenderer new.
game := self createDummyGame.
game currentScene gameObjects first addBehaviour: Transform new; addBehaviour: renderer.
sprite := MGSprite withRenderer: renderer.
img := MinerSpriteAlbum missingSprite.
sprite image: img.

self assert: sprite image equals: img