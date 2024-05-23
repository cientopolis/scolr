api
parse: aString

	| keyword term prod prim result phrase negation |
	keyword := (#word asParser / $- asParser) plus flatten
	           ==> [ :str | QueryKeyword text: str ].

	phrase := $" asParser
	          ,
	          (#word asParser / $- asParser / #space asParser) plus
		          flatten , $" asParser
	          ==> [ :nodes | QueryPhrase text: nodes second ].

	negation := $! asParser trim , (phrase / keyword)
	            ==> [ :nodes | QueryNegation element: nodes second ].


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
		==> [ :nodes | nodes second ] / keyword / phrase / negation.

	result := term end parse: aString.

	^ result isPetitFailure
		  ifTrue: [ nil ]
		  ifFalse: [ result ]