rendering-form
renderBibAlertOn: html
	html tbsAlert beInfo
		with: [ html
				small: [ html
						strong:
							'Bibtex files (with .bib extension and UTF8 encoding) are the preferred input format.';
						break;
						text:
							'Comments in the file (using %) are ignored. Abbreviations (using #) are not supported.' ] ]