# Miniworld to learn path finding algorithms

## Assignment

The goal of this project is to be able to study different AI algorithms related to path findings (depth-first, A*, breath-first). We would like to have a 2D map such as the one in 2D game (sokoban, old zelda). On such a map 	each tile can have properties (cost to cross it, elements). Then we can build different algorithms starting from a place and looking for an exit taking into account obstacles (river, trees) or paths. The people using this miniworld should be able to inspect the algorithm and the world graph to understand the way the algorithm is working.

Link and resources: The graphics can be rendered using plain Morphic or Bloc. Read the MemoryGame booklet http://books.pharo.org.

### Practice

Tuesday 11:00 AM

### Lecturer

Jan Blizničenko ([bliznjan@fit.cvut.cz](mailto:bliznjan@fit.cvut.cz))

### Team members

 * Marek Erben ([erbenma1@fit.cvut.cz](mailto:erbenma1@fit.cvut.cz))
 * Jan Potočiar ([potocjan@fit.cvut.cz](mailto:potocjan@fit.cvut.cz))
 * Marek Anda ([andamare@fit.cvut.cz](mailto:andamare@fit.cvut.cz))
 * Marek Bělohoubek ([belohma2@fit.cvut.cz](mailto:belohma2@fit.cvut.cz))

## Documentation:

### Description

With our application you can try to run different kinds of path-finding algorithms on the 2D map. There are different kinds of tiles on the map - such as Wall, Water (they are not accessable by the algorithm) or Grass and Swamp (They are accessable by the algorithm, but it takes a longer time to get over the Swamp).

User can choose two tiles - start and end. Than algorithm starts finding the path. During path-finding visited tiles are dyed on gray. After algorithm finds a path, the shortest way to the end is dyed on yellow.

### Installation

Our application has dependencies on `Bloc` Pharo library ([GitHub](https://github.com/pharo-graphics/Bloc)). To install this dependency, you can use Baseline or just run following code in Playground.

```smalltalk
Metacello new
   baseline: 'Bloc';
   repository: 'github://pharo-graphics/Bloc/src';
   load: #core
```

### Startup

It is necessarry to copy source images from `images` directory into your `pharo/shared` directory.

Our application implements 5 path-finding algorithms:

* Breadth-first search algorithm
* Depth-first search algorithm
* Greedy search algorithm
* Dijkstra algorithm
* A* algorithm

To run our application just run one of the following commands in Playground:

```smalltalk
"Run application with Breadth-first search algorithm"
PathFindingApp runWithAlgorithm: BFS
```

```smalltalk
"Run application with Depth-first search algorithm"
PathFindingApp runWithAlgorithm: DFS
```

```smalltalk
"Run application with Greedy search algorithm"
PathFindingApp runWithAlgorithm: GreedySearch
```

```smalltalk
"Run application with Dijkstra algorithm"
PathFindingApp runWithAlgorithm: Dijkstra
```

```smalltalk
"Run application with A* algorithm"
PathFindingApp runWithAlgorithm: AStar
```

### Architecture

Our application consists of tho base tiers - model and view. View tier is responsible for 
proper graphical interface, and model tier contains business logic.


### Design patterns

#### Polymorphism

Used at many places in code, for example in view tier - there are 4 tiles - grass, 
water, swamp and wall. Each of them knows how to draw itself on canvas, so when 
the tile is being (re)drawn, no type-checking is needed,

[Each subclass defines its own imageFileName](https://gitlab.fit.cvut.cz/erbenma1/path-finding-algorithms-in-pharo/blob/master/PathFinding.package/MapTile.class/instance/backgroundPaint.st#L4)

#### Strategy pattern

Used for path-finding algorithms. Each algorithm has its own class, implementing required interface.


[Check algorithm classes - for example BFS and DFS](https://gitlab.fit.cvut.cz/erbenma1/path-finding-algorithms-in-pharo/tree/master/PathFinding.package)

#### Singleton pattern

Used for Map. Map is used for presenting the application to the user, so more than one instance per application wouldn't make sense and might cause unexpected problems.
[Check Map implementation](https://gitlab.fit.cvut.cz/erbenma1/path-finding-algorithms-in-pharo/tree/master/PathFinding.package/Map.class)

#### Hook & Template

Used for example for DFS and BFS algorithms. These algorithms share the same code,
except for used data structure. We call the method for choosing the right structure in this
particular example the hook.

The only code difference between [BFS](https://gitlab.fit.cvut.cz/erbenma1/path-finding-algorithms-in-pharo/blob/master/PathFinding.package/BFS.class/instance/internalCollection.st) 
and [DFS](https://gitlab.fit.cvut.cz/erbenma1/path-finding-algorithms-in-pharo/blob/master/PathFinding.package/DFS.class/instance/internalCollection.st).

