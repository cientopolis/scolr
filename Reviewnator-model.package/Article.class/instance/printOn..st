printing
printOn: aStream
   aStream nextPutAll: self authors, '. ', self title, ' (', self year , ')'.