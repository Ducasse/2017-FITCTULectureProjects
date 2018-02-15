tests
testRenderer
| sprite renderer game |
renderer := SpriteRenderer new.
game := self createDummyGame.
game currentScene gameObjects first addBehaviour: Transform new; addBehaviour: renderer.
sprite := MGBlockElement withRenderer: renderer.

self assert: sprite renderer equals: renderer
