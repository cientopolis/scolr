initialize-release
initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.
	articles := OrderedCollection new.
	searchString := ''.
	database := ''.
	comments := ''.
	duplicateCount := 0