rendering-report
renderInfoAboutPossiblyMissingResultsOn: html

	html tbsAlert
		beInfo;
		with: [ 
			html
				text:
					'If you are missing results, check the bibtex file for irregularities. Sometimes they use special characters in the citation keys, which is not allowed. Sometimes, comments in the bibtex file bring problems. Found articles plus ignored articles should add up to the number of entries you have in the bibtex file';
				break ]