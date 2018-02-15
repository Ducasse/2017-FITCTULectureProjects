Abstract class for graphical elements representing various types of game cells. 

Classes inheriting from this should redefine imageResourceForClass class method, specifying which image will be used to display instances of that particular class. 

Instances of this class subclasses should be created with GameCellElement forCell: message only.
