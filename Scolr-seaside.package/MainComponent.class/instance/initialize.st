initialize-release
initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.
	self initializeVariables.
	tagCloudSubcomponent := TagCloudSubcomponent new.
	yearCloudSubcomponent := TagCloudSubcomponent new.
	yearCloudSubcomponent title: 'Years'