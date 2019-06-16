rendering
renderServerStatusOn: html
	| memNow sessionsNow |
	memNow := (Smalltalk vm memorySize / 1048576) truncated printString.
	sessionsNow := self application sessions size.
	html paragraph
		with: [ html
				small: [ html text: 'Released: ' , ReviewnatorDeployer releaseDate printString , ' in ' , ReviewnatorDeployer mode , ' mode from commit '.
					html anchor
						url: 'https://bitbucket.org/casco/scolr/commits/' , ReviewnatorDeployer fullReferenceCommit;
						target: '_new';
						with: ReviewnatorDeployer shortReferenceCommit.
					html
						text:
							' - ' , memNow , 'MB now, ' , (MaxMemory / 1048576) truncated printString , 'MB top - ' , sessionsNow printString , ' now, '
								, MaxSessions printString , ' top' ] ]