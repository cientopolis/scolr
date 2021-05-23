rendering
renderMainContentOn: html
	self renderActivitySelectorTabsOn: html.
	html
		tbsPanel: [ html tbsPanelBody: [ html render: selectedActivitySubcomponent ] ]