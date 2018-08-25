callbacks
upgradeFromSmalltalkHub
	(self confirm: 'Are you sure? This will reset your data. Perform a backup first, and then recover from it.')
		ifTrue: [ 
			self reset.
			Gofer it
				url: 'http://smalltalkhub.com/mc/casco/reviewnator/main';
				package: 'reviewnator';
				load.
			Smalltalk snapshot: true andQuit: false. ]