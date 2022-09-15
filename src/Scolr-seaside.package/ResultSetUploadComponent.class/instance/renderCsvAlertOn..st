rendering-form
renderCsvAlertOn: html
	html tbsAlert beWarning
		with: [ html
				small: [ html
						strong: 'CSV files with .cvs extension and UTF8 encoding are accepted but... ';
						break;
						text:
							'The first row of the file should include the following mandatory column headers: ';
						strong: 'authors, title, abstract, year';
						break;
						text:
							'Other column headers will be ignored. Articles with missing values will be ignored.' ] ]