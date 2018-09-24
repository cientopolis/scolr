initialize-release
initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.
	users := Set new.
	resultSets := Set new.
	notes := ''.
	inclusionCriteria := ''.
	exclusionCriteria := ''.