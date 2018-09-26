rendering
renderButtonsOn: html
	html anchor
		callback: [ self newAccessCode ];
		with: [ html tbsButton with: 'New access code' ].
	dirty
		ifTrue: [ html space.
			html anchor
				callback: [ self save ];
				with: [ html tbsButton with: 'Save changes' ] ]