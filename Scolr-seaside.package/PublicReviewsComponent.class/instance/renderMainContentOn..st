rendering
renderMainContentOn: html
	selectedRepository ifNil: [ self renderIndexOn: html ] ifNotNil: [ html render: reportSubcomponent  ]