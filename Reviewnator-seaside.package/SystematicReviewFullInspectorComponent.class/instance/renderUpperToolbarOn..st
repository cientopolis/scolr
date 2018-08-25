rendering
renderUpperToolbarOn: html
	html anchor
		callback: [ self uploadResultSet ];
		with: 'upload'.
	html text: ' | '.
	html anchor
		callback: [ self reportsPage ];
		with: 'reports'.
	html text: ' | '.
	html anchor
		callback: [ self logout ];
		with: 'logout ' , currentUser username.