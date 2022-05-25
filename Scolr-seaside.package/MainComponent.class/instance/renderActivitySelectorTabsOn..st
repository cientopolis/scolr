rendering
renderActivitySelectorTabsOn: html
	html tbsNav
		beTabs;
		with: [ self
				renderTabTitled: '1. Plan' for: ReviewSummarySubComponent on: html;
				renderTabTitled: '2. Upload' for: SetSelectorSubComponent  on: html;
				renderTabTitled: '3. Filter' for: ClassifyArticlesListSubcomponent  on: html;
				renderTabTitled: '4. Review' for: ReviewArticlesListSubcomponent  on: html;
				renderTabTitled: '5. Report' for: ReportSubcomponent  on: html;
				renderTabTitled: '6. Discuss' for: DiscussSubcomponent  on: html ]