Class part: I represent a graphical element named button - it's one part of menu.

Responsibility part:  I paint myselft in the menu element. I know my appearance such as size, location and background paint. I also know instance of button model.

Collaborators Part: My main collaborator is the button model. I interact with it directly via instance variable. In this model is stored my properties such as text, text alignmenth, id,  location and size.

Public API and Key Messages:

- how to create instances: 		SMButtonElement new
- message one: 				setSizeLocation
- message two: 				changeText