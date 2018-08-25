rendering
renderLowerToolbarOn: html
	html anchor
		callback: [ self backup ];
		with: 'backup'.
	html text: ' | '.
	html anchor
		callback: [ self restore ];
		with: 'restore'.
	html text: ' | '.
	html anchor
		callback: [ self reset ];
		with: 'reset'.
	html text: ' | '.
	html anchor
		callback: [ self upgradeFromSmalltalkHub ];
		with: 'Attempt upgrade'