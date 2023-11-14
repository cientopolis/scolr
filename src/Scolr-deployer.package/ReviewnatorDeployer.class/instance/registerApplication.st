hooks
registerApplication

	SessionManager default registerUserClassNamed: 'ReviewnatorDeployer'.
	ReviewnatorFileBasedConfiguration resetSingleton.
	super registerApplication.
	SmtpServer notNil ifTrue: [ 
		app configuration addParent: WAEmailConfiguration instance.
		app preferenceAt: #smtpUsername put: SmtpUsername.
		app preferenceAt: #smtpPassword put: SmtpPassword.
		app preferenceAt: #smtpServer put: SmtpServer.
		app preferenceAt: #smtpPort put: SmtpPort

		"(WAAdmin defaultDispatcher handlerAt: self applicationPath) 
			exceptionHandler: ReviewnatorEmailErrorHandler ." ].

	app sessionClass: ScolrSession