reporting
reportUnrecoverableFailure: anErrorString
	shouldFail := true.
	importErrors add: '(CRITICAL) ' , anErrorString