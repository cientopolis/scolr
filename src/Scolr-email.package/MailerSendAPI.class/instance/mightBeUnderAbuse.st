api
mightBeUnderAbuse
	"Currently returns true only when emails in the abuse window have been sent within a 60 seconds timeframe, or the last two in less than 10"

	abuseWindow size <= 2 ifTrue: [ ^ false ].
	abuseWindow last timestamp asSeconds
	- abuseWindow nextToLast timestamp asSeconds > 10 ifTrue: [ ^ false ].
	abuseWindow last timestamp asSeconds
	- abuseWindow first timestamp asSeconds > 60 ifTrue: [ ^ false ].

	^ true