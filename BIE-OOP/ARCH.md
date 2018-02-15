Contact is a self-contained class, handling all operations on the individual contact.

Everything is stored in ContactDatabase class, which is also responsible for contact exporting.

Due to the way I (mis)handled class responsibility distribution, ContactList is responsible for contact importing, because otherwise, the displayed list of contacts and the contact database go out of sync.

ContactEditor is responsible for editing contact.

BaseContact class *tries to* imitate the presence of polymorphism.
NullContact implements Null object pattern.
ContactFactory implements Factory pattern.
ContactDatabaseSingleton implements Singleton pattern.
