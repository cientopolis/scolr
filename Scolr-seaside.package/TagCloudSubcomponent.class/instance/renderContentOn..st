initialization
renderContentOn: html
	html
		div: [ html div: [ html strong: 'Tags in use:' ].
			html div
				with: [ tags sortedElements
						do: [ :ass | 
							html anchor
								callback: [ self toggleTag: ass key ];
								with: [ | button |
									button := html tbsButton.
									(hiddenTags includes: ass key)
										ifTrue: [ button beDefault ]
										ifFalse: [ button bePrimary ].
									button
									   style: 'margin: 1px;';
										beExtraSmall;
										with: [ html text: ass key , ' '.
											html span
												class: 'badge';
												with: ass value greaseString ] ] ] ] ]