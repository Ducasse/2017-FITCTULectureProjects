# BI-OOP - semestral work - Books collector app

# Weekly reports

## 18.11.2017
We worked on the basic architecture of the book collector. We added new (mostly empty) classes, which should appear in our project. We are working on the JSON/STON serializer. By the next session, we want to finish the work with the serializer and start with the website and code requirements (for example null object pattern, visitor patter, polymorphism etc.).

## 25.11.2017
The basic classes have been implemented. We were working on the REST API for the book collector.

## 04.12.2017
Today we had a short session about the visitor pattern that would generate html. We are having problems creating a website due to the lack of experience.

## 07.12.2017
Decision - not to use NeoJSON anymore -> STON is better :heart: STON is love.

## 11.12.2017
We discussed a few ways to fulfill semestral work's code requirements, particularly singleton object and null object pattern. The instance of the server will be a singleton, which will incorporate REST methods all classes written until now. Null object pattern of each class sent by REST API will be created. Discussions on polymorphism and visitor pattern are still going on...

## 14.12.2017
We decided to not implement a web app, desktop is easier :heart: SPEC is love.

## 15.12.2017
The UI for client implemented - added buttons, textFields, more UIs etc.

## 21.12.2017
Short session with Jan B. - solving spec problem, ston problem etc.

## 22.12.2017
Remaking the REST API.

## 23.12.2017
Remaking the UI for the client, added more properties, funcionalities - add/delete reader, add/delete book, make a borrowing, returning books etc.. according to rest API.

## 24.12.2017
Generating IDs - a pseudogenerator, new properties in UI etc. Server - added save and load (visitor pattern) - STON format, in the future, we can also implement a visitor for neoJson, or XML, or our own format.

## 30.12.2017
Code refactoring, UI selection fixed, opening window fixed, server reset fixed. Added the null object pattern.

# User guide

## Requirements
- Teapot

## Getting started
These can be launched from the playground.

| Command                                    | Action                                    | 
| ------------------------------------------ | ----------------------------------------- | 
| `BooksCollectorREST reset`                 | resets the server (singleton)             | 
| `BooksCollectorREST instance init`         | initialization on the default port (8080) | 
| `BooksCollectorREST instance initOn: port` | initialization on a custom port           | 
| `BooksCollectorREST instance start`        | starts the server (REST API)              | 
| `BooksCollectorREST instance stop`         | stops the server                          | 
| `BooksCollectorClient new open`            | opens a new REST client                   |


### MainUI
- fill in an url, for example: localhost:8000 and click connect
- if successful, you can open other UIs.

### BooksUI
- list of books in the BooksCollector
- refresh button: refreshes the list
- delete button: deletes the selected (currently highlighted) book
- incr/decr button: increments/decrements the count of the selected book

### ReadersUI
- list of readers in the BooksCollector
- refresh button: refreshes the list
- delete button: deletes the selected reader (if he/she has no books)

### BorrowingsUI
- list of readers (on the left side)
- list of books of selected reader (on the right side)
- returning a book: select the reader, select the book, click the "return book" button

### AddBooksUI
- fill in information about the book and click the add button
- all fields are mandatory
- year and count must be an integer larger or equal to 0

### AddReadersUI
- fill information about reader and click the "add" button.
- all fields are mandatory
- year must be an integer

### AddBorrowingsUI
- list of all readers (on the left side)
- list of available books (on the right side)
- make a borrowing: select a reader, select a book, click the "add borrowing" button 

# Known issues
- do not use BooksCollectorREST>>load, when the server is running

# TODO
more documentation, more testing


