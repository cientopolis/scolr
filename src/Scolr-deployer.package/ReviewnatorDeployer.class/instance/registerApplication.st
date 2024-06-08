hooks
registerApplication

	SessionManager default registerUserClassNamed: 'ReviewnatorDeployer'.
	ReviewnatorFileBasedConfiguration resetSingleton.
	super registerApplication.

	(WAAdmin defaultDispatcher handlerAt: self applicationPath) 
		exceptionHandler: ReviewnatorEmailErrorHandler.

	app sessionClass: ScolrSession