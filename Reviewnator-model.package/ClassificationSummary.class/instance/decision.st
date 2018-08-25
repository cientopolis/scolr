accessing
decision
  self isExclusion ifTrue: [ ^'exclude' ].
  self isInclusion ifTrue: [ ^'include' ].
  self isDisagreement  ifTrue: [ ^'disagree' ].