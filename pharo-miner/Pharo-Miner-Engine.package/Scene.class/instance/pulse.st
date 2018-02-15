pulse
pulse
	| theGameObjects |
	
	"We store reference to GameObjects in Array because it is possible
	that a random GameObject is removed while enumerating a collection"
	theGameObjects := self gameObjects copy.
	theGameObjects do: [ :aGameObject | aGameObject pulse ]
