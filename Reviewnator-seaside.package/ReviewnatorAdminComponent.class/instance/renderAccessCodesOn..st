rendering
renderAccessCodesOn: html
	html tbsTable
		beBordered;
		with: [ self renderTableHeaderOn: html.
			html
				tableBody: [ self configuration accessCredentials do: [ :each | self renderCredential: each on: html ] ] ].
	html tbsButton
		with: [ html anchor
				callback: [ self newAccessCode ];
				with: 'New access code' ]