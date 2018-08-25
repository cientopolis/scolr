classifications
classificationFor: article by: user
  

  ^classifications detect: [:each | ( each author == user) and: [each article == article]] ifNone: [nil].