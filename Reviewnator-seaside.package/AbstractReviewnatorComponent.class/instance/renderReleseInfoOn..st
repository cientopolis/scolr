rendering
renderReleseInfoOn: html
	html
		paragraph: [ html text: 'Release: ' , ReviewnatorDeployer releaseDate printString , ' in ' , ReviewnatorDeployer mode , ' mode ('.
			html anchor
				url: 'https://bitbucket.org/casco/reviewnator/commits/';
				target: '_new';
				with: ReviewnatorDeployer referenceCommit.
			html text: ')' ]