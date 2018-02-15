I'm Seaside component and I represent a view of a book

to get Seaside:
[
    Metacello new
        repository: 'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
        configuration: 'Seaside3';
        version: #'release3.2';
        load: #('OneClick').
    UIManager default message: 'Loading complete'
] asJob run

to start seaside server: 
Plocha > Tools > Seaside Control Panel > RMB > ZnZincServerAdaptor > Start

to register BookComponent:
http://localhost:8080/config/ > Add:
name: 'BookComponent'
type: 'application'
> OK
Root Class: 'BookComponent'