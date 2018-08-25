callbacks
stream: row into: stream
	1 to: row size do: [ :i | 
		stream nextPutAll: '"' , (row at: i) asString , '"'.
		i < row size
			ifTrue: [ stream nextPutAll: ',' ] ].
	stream nextPut: Character lf