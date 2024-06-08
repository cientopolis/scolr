rendering
renderAccessCodesUsageOn: html

	html paragraph
		style: 'padding-top: 10px; padding-bottom; 10px';
		with: [ 
			html small:
					'I have still ' , ReviewnatorFileBasedConfiguration singleton
							countOfAvailableAccessCodes greaseString
					, ' access codes to suggest. '
					,
						ReviewnatorFileBasedConfiguration singleton usedAccessCodes size
							greaseString
					,
						' have already been used, although not all of them suggested my me.' ]