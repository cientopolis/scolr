Smalltalk vm maxExternalSemaphoresSilently: 1024.
"Install the app"
Metacello new
	baseline: 'Scolr';
	repository: 'github://cientopolis/Scolr';
	onConflictUseIncoming ;
	onWarningLog;
	load.
"Disable loading of preferences"	
PharoCommandLineHandler forcePreferencesOmission: true.
"Disable Epicea"
EpMonitor reset.
NoChangesLog install.
NoPharoFilesOpener install