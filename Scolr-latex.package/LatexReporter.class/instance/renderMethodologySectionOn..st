accessing
renderMethodologySectionOn: stream
	stream
		nextPutAll:
			'\section{Methodology}

This review was conducted as a collaborative effort of users that identify themselves with the following aliases: '.
	stream
		nextPutAll: ((coReview contributors collect: #username) fold: [ :a :b | a  , b ] ifEmpty: [ '' ]).
	stream nextPut: Character cr.
	stream
		nextPutAll:
			'....
		....'