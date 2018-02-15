Used Patterns:
Visitor:
SearchVisitor visits BookDBInterface - implementing different search strategies
also utilizing ouble dispatch

Observer:
WASearch observes Controller

Polymorphism:
WARootComponent - superclass of all WAcomponents, that can be displayed as separate web page
-subclassess:
WABookForm
WAHomepage
WASingleBookView




Seaside installation: 
-Execute this code in playground: 
[
    Metacello new
        repository: 'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
        configuration: 'Seaside3';
        version: #'release3.2';
        load: #('OneClick').
    UIManager default message: 'Loading complete'
] asJob run

Voyage installation:
-Execute this code in playground:
Gofer it
url: 'http://smalltalkhub.com/mc/estebanlm/Voyage/main';
configurationOf: 'VoyageMongo';
loadStable.

MongoDB installation:
-Follow official guide here: https://docs.mongodb.com/manual/tutorial/install-mongodb-on-windows/

To start seaside server: 
Desktop > Tools > Seaside Control Panel > RMB > ZnZincServerAdaptor > Start

To register BookComponent:
http://localhost:8080/config/ > Add:
name: 'BookComponent'
type: 'application'
 OK
Root Class: 'WAHomepage'





Thursday, January 4 2018

For the past two weeks we have been adding some new features and making the web easier to look at.

Starting with the features, we have implemented searching and Voyage DB.

You can now search for books by writing a pattern, selecting the attributes you want to search by and choosing if you want to show only exact matches or books containing the pattern.

We have also improved our Seaside component usage, such as breaking them into logical and visual parts or making basic component parent classes to tidy up the code.



Thursday, December 21 2017

This week we have added more Seaside components. 

The first is the most important one. Home component is where you first land when you start using our app. It contains a basic menu.

The second one you can reach by the menu on the home menu. It allows adding more books to the database by typing the info into a html form.

The last one is also reachable from the menu and it displays all the books in the database. There is also an option to delete a book of your choice.

We are planning on writing more tests and making the experience of using our app a bit more pleasant.



Thursday, December 14 2017

Intense studying of Seaside framework brought some long expected fruit:
We have uncovered the mystery of WAComponenct call: aComponent message, whose power is being harvested to turn what used to be static web to an actual, somewhat responsive, interactive web application.

To showcase the usage and in order to further improve on this idea, BookHomepage and DummyComponent classes have been added.

We have reached an agreement regarding basic outlook of the user interface.



Thursday, December 7 2017

More tests have been added. BookIndex class has been extended with new capability to index all the books by their ISBN, consecutively, includes function has been simplified.

Seaside integrated, first Seaside component with very limited usability implemented.

Next week, more Seaside is going to be on agenda.



Thursday, November 30 2017

A basic Book class has been implemented with focus on accessing and initialization methods (and a Tester class) to facilitate development of the rest of the app around it, this class is meant to be gradually extended as seen fit.

For the purpose of developing our application at a steady pace, we are using the Pharo image to store persistent objects. Preliminary data storage model has been implemented. We are also still looking into Voyage + MongoDB storage solution.

Everyone is now without any problems able to work with our gitlab repository through Iceberg.

Next week, we plan to begin using seaside to start building presentation layer of the app.



Thursday, November 23 2017

The decision to use Voyage + MongoDB has finally been made. Voyage documentation has been studied and examples tested.

We have also encountered an error in "Voyage: Persisting Objects in Document Databases" (September 14, 2017), which in part 1.2 apparently links to an old version of Voyage, that actually doesn't work, even with the example shown in the book.
This issue was resolved thanks to the help of Discord user CyrilFerlicot, who have also apparently filed an issue to update the book.

Iceberg still working exclusively on Windows machines.

For the following week, we are going to implement objects to be stored in the database.



Thursday, November 16 2017

This week we familiarized ourselves with workflow, with emphasis on repository management, Pharo development environment and the ever-nondeterministically-failing-and-undecipherable- exceptions-producing Iceberg, that we have grown to accept and utilize to the best of our ability.

We have also pondered application design and reached a conclusion regarding basic object structure in terms of problem domain.

We have agreed to utilize Seaside framework to create web application, but have yet failed to reach a definitive conclusion regarding persistence technology - whether to use Voyage or not.

For the following week, we are going to implement classes representing basic objects in our application such as book and author with methods enabling CRUD operations over them.
