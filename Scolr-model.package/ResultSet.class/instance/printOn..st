printing
printOn: aStream

  aStream nextPutAll: '(', articles size printString, ' articles) @', self database, ' for: ', self searchString.