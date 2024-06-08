|  debug adminEmail senderForNotificationEmails scolrApplication |

debug := (OSEnvironment current at: 'DEBUG' ifAbsent: 'false') = 'true'.
adminEmail := (OSEnvironment current at: 'ADMIN_EMAIL' ifAbsent: nil).
senderForNotificationEmails := (OSEnvironment current at: 'NOTIFICATION_EMAIL' ifAbsent: nil).

debug ifFalse: [
	WAAdmin defaultServerManager adaptors
        do: [ :each | WAAdmin defaultServerManager unregister: each ].
	WAAdmin applicationDefaults
		removeParent: WADevelopmentConfiguration instance.
].


scolrApplication := WAAdmin register: LandingComponent asApplicationAt: LandingComponent relativeUrl.

scolrApplication sessionClass: ScolrSession.

scolrApplication
	addLibrary: JQDeploymentLibrary;
	addLibrary: TBSDeploymentLibrary.

WAAdmin defaultDispatcher defaultName: LandingComponent relativeUrl.

(WAAdmin defaultDispatcher handlerAt: LandingComponent relativeUrl) 
		exceptionHandler: ReviewnatorEmailErrorHandler.

ZnZincServerAdaptor startOn: 8080.

Transcript cr; show: 'Scolr started'; cr; cr.
