[![build status](https://gitlab.fit.cvut.cz/novakad4/oop-semestral/badges/master/build.svg)](https://gitlab.fit.cvut.cz/novakad4/oop-semestral/commits/master)
[![coverage report](https://gitlab.fit.cvut.cz/novakad4/oop-semestral/badges/master/coverage.svg)](https://gitlab.fit.cvut.cz/novakad4/oop-semestral/commits/master)

# Miniworld to learn path finding algorithms
## Description
The goal of this project is to be able to study different AI algorithms related to path findings (depth-first, *Star, breath-first). We would like to have a 2D map such as the one in 2D game (sokoban, old zelda). On such a map each tile can have properties (cost to cross it, elements). Then we can build different algorithms starting from a place and looking for an exit taking into account obstacles (river, trees) or paths. The people using this miniworld should be able to inspect the algorithm and the world graph to understand the way the algorithm is working.
Link and resources: The graphics can be rendered using plain Morphic or Bloc. Read the MemoryGame booklet http://books.pharo.org.


## Weekly Report

## 4.1.2017

### Done
* BlButton improvements and bugfixes
* Implemented Dijkstra
* Fix bugs with algorithm visualization
* Refactoring
* Finished up the project

## 28.12.2017

### Done
* Map is centered on launch
* Commited changes (Kinda challenge when Pharo was unable to do it)
* Fixed Button several related issues and limitations
* Added algorithm selection element
* Added map generation element
* Implemented map generation with Perlin noise
* Implemented A*

### Doing
* Refactoring
* Implement Dijkstra
* Implement A*

### ToDo
* Fix bugs with algorithm visualization
* Fix button bugs


## 21.12.2017

### Done
* Add image support to BlButton
* Reworked ripple coloring on BlButton
* Improved BlBottomBar layout
* Add position to each tile
* Tile types can now be changed in similiar way to start/end states

### Doing
* Implement Dijkstra
* Implement A*
* Add algorithm selection element
* Implement more sophisticated maze generation algorithm

### ToDo
* Fix bugs with algorithm visualization

## 14.12.2017

### Done
* Implemented BFS
* Implemented A* for unweighted graphs
* Possibility of running the algorithm by steps
* Displaying the shortest path and all explored tiles

### Doing
* Implement Dijkstra
* Implement A* for weighted graphs
* Implement maze generation algorithm

### ToDo
* Fix bugs with algorithm visualization

## 7.12.2017

### Done
* Removed Button Factory
* Add material BlButton with ripple effect
* Add TileStates
* Broken Pharo image... again and again...
* Add interactive start and end selection with obstacle detection

### Doing
* Basic UI
* Implement algorithm visualisation
* Implement BFS
* Implement maze generation algorithm

### ToDo
* Implement DFS, Djikstra, A*
* Maze random generation algorithm
* Fix BlBottomBar BlButton click overlap

## 30.11.2017

### Done
* Created button factory

### Doing
* Basic UI

### ToDo
* Implement maze generation algorithm
* Implement BFS and DFS

## 23.11.2017

### Doing
* Brick and Bloc learning
* Researching graph representation in Pharo and usage of data structures necessary for implementing the algorithms.

### ToDo
* Implement maze generation algorithm
* Implement BFS and DFS
* Add UI

## 16.11.2017

### Done
* CI
* Map tiles and their texture loading
* Basic tile grid implementation

### Doing
* Bloc learning

### ToDo
* Implement maze generation algorithm
* Implement BFS and DFS
* Add UI

## 9.11.2017

### Done
* Preparation of gitlab repo
* Division of tasks

### ToDo
* Solve critical issues (First algorithm implemented, Initial tiles etc.)
