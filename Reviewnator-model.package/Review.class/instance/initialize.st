initialize-release
initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.
	tags := Set new.
	dimensionSpecificComments := Dictionary new.
	^ self