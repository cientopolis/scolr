initialize-release
initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.
	resultSet := ResultSet new. 
	resultSet database: 'Scopus'.
	^self