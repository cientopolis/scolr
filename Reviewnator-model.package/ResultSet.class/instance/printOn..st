printing
printOn: aStream

  aStream nextPutAll: '(', articles size printString, ') @', self database, ' for: ', self searchString.