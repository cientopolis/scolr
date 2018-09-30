rendering
renderReleseInfoOn: html
	| memNow maxMem |
	memNow := (Smalltalk vm memorySize / 1048576) truncated printString.
	maxMem := (AbstractReviewnatorComponent maxMemorySize / 1048576) truncated printString.
	html paragraph
		with: [ html
				small: [ html text: 'Released: ' , ReviewnatorDeployer releaseDate printString , ' in ' , ReviewnatorDeployer mode , ' mode ('.
					html anchor
						url: 'https://bitbucket.org/casco/reviewnator/commits/';
						target: '_new';
						with: ReviewnatorDeployer referenceCommit.
					html text: ') - ' , memNow , 'MB now, ' , maxMem , 'MB top' ] ]