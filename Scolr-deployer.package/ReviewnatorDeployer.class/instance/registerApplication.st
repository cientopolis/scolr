hooks
registerApplication
	SessionManager default registerUserClassNamed: 'ReviewnatorDeployer'.
	ReviewnatorFileBasedConfiguration resetSingleton.
	super registerApplication.
	ReviewnatorDeployer smtp notNil
		ifTrue: [ app configuration addParent: WAEmailConfiguration instance.
			app preferenceAt: #smtpServer put: ReviewnatorDeployer smtp.
			(WAAdmin defaultDispatcher handlerAt: self applicationPath) exceptionHandler: ReviewnatorEmailErrorHandler ].
	app sessionClass: ScolrSession