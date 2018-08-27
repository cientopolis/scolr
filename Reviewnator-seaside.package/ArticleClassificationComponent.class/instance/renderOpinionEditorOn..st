rendering
renderOpinionEditorOn: html
	html
		strong: 'Recommendation:';
		break;
		break.
	self renderDecisionButtonsOn: html.
	html break.
	html
		break;
		strong: 'Comments:';
		break.
	html textArea
		columns: 80;
		rows: 6;
		on: #comments of: opinionToEdit.
	html break.
	html break.
	html tbsButton
		callback: [ 
					self
						acceptChanges;
						answer ];
		value: 'Save new (replace old)'.
	html space.
	html tbsButton
		callback: [ self answer ];
		value: 'Cancel (return)'