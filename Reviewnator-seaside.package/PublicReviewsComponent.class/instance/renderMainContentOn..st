rendering
renderMainContentOn: html
	review ifNil: [ self renderIndexOn: html ] ifNotNil: [ html render: reportSubcomponent  ]