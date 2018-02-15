initialization
initialize 
| space grid eventListener model |

super initialize .

BlUniverse reset.
space := BlSpace new.
space extent: 350@768.
model := SMMenuModel new.
grid := SMMenuElement new menuModel: model .

space root addChild: grid.

eventListener := SMMenuListener new buttons: model.
space root addEventHandler: eventListener.

space show.