hooks
registerApplication
	super registerApplication.
	ReviewnatorDeployer smtp notNil
		ifTrue: [ app configuration addParent: WAEmailConfiguration instance.
			app preferenceAt: #smtpServer put: ReviewnatorDeployer smtp ]