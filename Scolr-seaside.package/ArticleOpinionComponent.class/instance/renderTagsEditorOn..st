rendering
renderTagsEditorOn: html
	html
		label: 'Tags';
		break.
	html textArea
		on: #tags of: self;
		columns: 80;
		rows: 2.
	html
		break;
		small: [ html
				strong: 'Tags in use: ';
				text: (self stringFromTagSet: self tagsInUse);
				break;
				text: 'Use comma to separate tags.';
				break;
				break ]