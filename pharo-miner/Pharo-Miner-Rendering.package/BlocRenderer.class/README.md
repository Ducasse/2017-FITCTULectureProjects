I manage a single window and render Image objects to it.

Example usage:

|  img  |
BlocRederer reset. "used to reset class-side variables"
img := Image createFromPath: 'path to image file'.
BlocRenderer showWindow.
BlocRenderer draw: img at: x@y

"To stop an Image from drawing use:"
BlocRenderer removeImage: img