callbacks
reset
	self logout.
	self initializeVariables.
	CollaborativeReview resetSingleton .
	self autosave