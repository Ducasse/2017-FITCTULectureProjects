Class part:  I represent initialization of menu with its model and grid.

Responsibility part: I am responsible for making new instance of menu with its model. I also return grid which is MenuElement. My last purpose is to assign round instance to my model.

Collaborators Part: My main collaborator is MenuModel. I create it and assign round instance to the MenuModel. 

Public API and Key Messages

One example how to use this class:
| menu grid |
menu := SMMenuInit new.
grid := menu grid.
menu roundInstance: round.