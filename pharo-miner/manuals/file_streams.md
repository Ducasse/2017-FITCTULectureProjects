# How to open fileStream
**For reading:**  
```aStream := aFileNameString asFileName readStream```

**For reading/writing in an existing file:**  
```aStream := aFileNameString asFileName readWriteStream```

**For creating a new file for writing:**  
```aStream := aFileNameString asFileName writeStream```

**For writing to the append of the existing file:**  
```aStream := aFileNameString asFileName appendingWriteStream```
	
## File in working directory
	  
**For working with file in working directory use instead of `aFileNameString`:**  
```(FileLocator workingDirectory / aFileNameString)```
	

## Example of creating and writing to the file
```smalltalk
| stream |
stream := (FileLocator workingDirectory / 'temp.txt') writeStream.
stream
	nextPutAll: 'string to write in file';
	cr;
	nextPutAll: 'string to write in file';
	close
```

## Example of reading whole file to variable
```smalltalk
| stream content |
stream := (FileLocator workingDirectory / 'temp.txt') readStream.
content := stream contentsOfEntireFile
```

## Example of reading file line by line
```smalltalk
| stream |
stream := (FileLocator workingDirectory / 'temp.txt') readStream.

[stream atEnd] whileFalse: 
	[ 
		| line | 
		line := stream nextLine. 
		Transcript show: line; cr.
	]
```