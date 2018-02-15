# THIS IS OLD README

# TODOs:
* Design application diagram - relations between components - completed
![diagram](https://gitlab.fit.cvut.cz/strejivo/BattleSnake/blob/master/images/IMG_20171107_141835.jpg)

* Implement core http handling - completed

* Implement BFS (Next move search alg) - completed
now awaiting for refactoring and tests

* Get higher test coverage rate

# Reports

1. First meetup online (4.11.2017):
First steps of design

2. Two small meetings online and one in person

## We implemented basic structure (request handling)

We explored possibilities and features of teapot and discussed them on Discord and implemented http handlers

***

## Own utility for asychronous timeouts

We started with discussion on Discord and implemented asynchronous callback dispatching with fork

***
## We ran our testing server

But due to future debugging friendly development we decided to run server localy in docker

***
## We implemented Next Move Search algorithm

We opted for BFS as our first implementation of decision algorithm

***
## We implemented GTO Inspector