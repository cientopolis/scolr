initialization
renderContentOn: html
	html tbsPanel beDefault
		with: [ html tbsPanelHeading: 'Tags'.
			html
				tbsPanelBody: [ tags sortedCounts
						do: [ :ass | 
							html anchor
								callback: [ self toggleTag: ass value ];
								with: [ | button |
									button := html tbsButton.
									(hiddenTags includes: ass value)
										ifTrue: [ button beDefault ]
										ifFalse: [ button bePrimary ].
									button
										style: 'margin: 1px;';
										beExtraSmall;
										with: [ html text: (ass value ifEmpty: [ '?' ]) , ' '.
											html span
												class: 'badge';
												with: ass key greaseString ] ] ].
					tags
						ifNotEmpty: [ html anchor
								callback: [ self toggleSelection ];
								with: [ html tbsButton
										style: 'margin: 1px;';
										beExtraSmall;
										beWarning;
										with: 'invert selection' ] ] ] ]