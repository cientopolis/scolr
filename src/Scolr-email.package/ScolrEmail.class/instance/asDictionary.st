private
asDictionary

	| receivers |
	receivers := to collect: [ :anEmailAddress | 
		             Dictionary new
			             at: 'email' put: anEmailAddress;
			             yourself ].

	^ Dictionary new
		  at: 'from' put: (Dictionary new
				   at: 'email' put: from;
				   yourself);
		  at: 'subject' put: subject;
		  at: 'to' put: receivers;
		  yourself