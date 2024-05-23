api
parse: aString

	| word term prod prim result |
	word := (#word asParser / $- asParser)  plus flatten
	        ==> [ :str | QueryTerm text: str ].

	term := PPDelegateParser new.
	prod := PPDelegateParser new.
	prim := PPDelegateParser new.

	term setParser: prod , $| asParser trim , term ==> [ :nodes | 
		QueryDisjunction leftTerm: nodes first rightTerm: nodes last ]
		/ prod.
	prod setParser: prim , $& asParser trim , prod ==> [ :nodes | 
		QueryConjunction leftTerm: nodes first rightTerm: nodes last ]
		/ prim.
	prim setParser: $( asParser trim , term , $) asParser trim
		==> [ :nodes | nodes second ] / word.

	result := term end parse: aString.

	^ result isPetitFailure
		  ifTrue: [ nil ]
		  ifFalse: [ result ]