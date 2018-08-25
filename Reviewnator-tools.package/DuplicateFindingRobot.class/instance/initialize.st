initialize-release
initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.

	alreadySeen := Set new.
	classifications := Set new.

	^self