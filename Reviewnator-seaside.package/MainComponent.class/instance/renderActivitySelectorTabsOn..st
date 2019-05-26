rendering
renderActivitySelectorTabsOn: html
	html tbsNav
		beTabs;
		with: [ self
				renderTabTitled: '1. Plan' for: #plan on: html;
				renderTabTitled: '2. Upload' for: #upload on: html;
				renderTabTitled: '3. Classify' for: #classify on: html;
				renderTabTitled: '4. Review' for: #review on: html;
				renderTabTitled: '5. Report' for: #report on: html ]