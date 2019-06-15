rendering
renderErrorOrWarningOn: html
	html break.
	errorMessage notNil
		ifTrue: [ html tbsAlert
				beDanger;
				with: [ html
						strong: 'Oh snap! ';
						break.
					html text: errorMessage ].
			errorMessage := nil ].
	warningMessage notNil
		ifTrue: [ html tbsAlert
				beWarning;
				with: [ html
						strong: 'Warning: ! ';
						break.
					html text: warningMessage ].
			warningMessage := nil ]