rendering
renderDecisionButtonsOn: html
	 | group |
	group := html radioGroup.
        group radioButton
            selected: (opinionToEdit toInclude) ;
            callback: [ opinionToEdit includeIt].
        html text: ' Include it - '.
        group radioButton
            selected: (opinionToEdit toExclude) ;
            callback: [ opinionToEdit excludeIt].
        html text: ' Exclude it - '.
        group radioButton
            selected: (opinionToEdit  undecided) ;
            callback: [ opinionToEdit forget].
        html text: ' Undecided'.