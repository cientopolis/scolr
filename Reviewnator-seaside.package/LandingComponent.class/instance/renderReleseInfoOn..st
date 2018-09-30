rendering
renderReleseInfoOn: html
	| memNow maxMem sessionsNow maxSessions |
	memNow := (Smalltalk vm memorySize / 1048576) truncated printString.
	maxMem := (AbstractReviewnatorComponent maxMemorySize / 1048576) truncated printString.
	sessionsNow := WASession allInstances size.
	maxSessions := AbstractReviewnatorComponent maxConcurrentSessions.
	html paragraph
		with: [ html
				small: [ html text: 'Released: ' , ReviewnatorDeployer releaseDate printString , ' in ' , ReviewnatorDeployer mode , ' mode ('.
					html anchor
						url: 'https://bitbucket.org/casco/reviewnator/commits/';
						target: '_new';
						with: ReviewnatorDeployer referenceCommit.
					html text: ') - ' , memNow , 'MB now, ' , maxMem , 'MB top - ' , sessionsNow printString , ' now, ', maxSessions printString , ' top' ] ]