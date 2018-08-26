rendering
renderErrorOrWarningOn: html
	errorOrWarningMessage notNil
		ifTrue: [ html tbsAlert
				beDanger;
				with: [ html strong: 'Oh snap! '.
					html text: errorOrWarningMessage ].
			errorOrWarningMessage := nil ]