reviews
reviewFor: article by: user

  ^reviews detect: [:each | ( each author == user) and: [each article == article]] ifNone: [nil].