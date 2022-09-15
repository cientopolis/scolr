accessing
commentInDimension: dimensionName

      ^dimensionSpecificComments at: dimensionName ifAbsent: String new .