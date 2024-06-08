api
updateAbuseWindowWith: aScolrEmail

	abuseWindow addLast: aScolrEmail.
	abuseWindow size > 10 ifTrue: [ abuseWindow removeFirst ]