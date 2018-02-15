I represent a single source image in the Sokoban game.

Every subclass of this class is implemented as a singleton - the image is loaded from the file only once, and then the instance is returned every time someone requests it.