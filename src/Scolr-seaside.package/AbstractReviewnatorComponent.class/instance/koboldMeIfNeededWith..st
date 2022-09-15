root
koboldMeIfNeededWith: anHtmlRoot
	KoboldServer notNil & KoboldToken notNil
		ifTrue: [ anHtmlRoot meta
				name: 'SelfRefactoringToken';
				content: KoboldToken.
			anHtmlRoot javascript
				url: 'https://selfrefactoring.s3.amazonaws.com/resources/jquery.htmlClean.min.js'.
			anHtmlRoot javascript
				url: 'https://selfrefactoring.s3.amazonaws.com/resources/logger.js'.
			anHtmlRoot javascript
				add:
					'$(function() {
		xpathInstance = new XpathProcessor();
		logger = new Logger("' , KoboldServer
						,
							'", true);
		logger.loadUsabilityEventsLoggers();
		logger.updateActiveVersion();
		logger.loadRefactorings();
	});' ]