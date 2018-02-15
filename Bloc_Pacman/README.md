# Pacman using Bloc

## Installation

- Download [Pharo 6.1](https://pharo.org/)
- Install [Bloc](https://github.com/pharo-graphics/Bloc)
- Copy *map.txt* and *pacman_images* to Pharo's root folder
- Clone this repository using Iceberg

## Run

<b>``` PcmGame new ```</b>

## Design patterns

- Null Object Pattern - PcmDirNull
- Double-dispatch - PcmStaticBlock>>canGoThrough:
- Polymorfism - directions
- Singleton - directions(PcmDirLeft, PcmDirRight, ...)
- Observer - PcmMovingBlocks: informing its view about coordination change(PcmBlockMoved)


## Reports

### 7.11.

- we started learning Bloc with [this document](http://files.pharo.org/books-pdfs/booklet-Bloc/BLOCDRAFT.pdf)
- original pacman ghost behaviour: http://gameinternals.com/post/2072558330/understanding-pac-man-ghost-behavior

### 20.11.

- learning Bloc (problems with information sources)
- beginning of the game design
- finding out what we do not know
- plans for next iteration: complete class design (Frantisek), make map with moving pacman (Ondrej)

### 27.11.
- moving system for Pacman is completed
- view for Pacman and ghost
- class design is almost completed
  
### 4.12.
- Small and big dots added to map and game; TODO: center dots on the tile
- Random moves of ghosts on map
- added scaffolding for ghost collision handling

### 11.12.
- center dots on the tile
- point counting
- add point counter to UI
- collision ghost and pacman
- simple ghost AI to find pacman

### 18.12.
- points counting
- adding design patterns
