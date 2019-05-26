rendering
renderActivitySelectorTabsOn: html
	html tbsNav
		beTabs;
		with: [ self
				renderTabTitled: '1. Upload' for: #upload on: html;
				renderTabTitled: '2. Classify' for: #classify on: html;
				renderTabTitled: '3. Review' for: #review on: html;
				renderTabTitled: '4. Report' for: #report on: html ]