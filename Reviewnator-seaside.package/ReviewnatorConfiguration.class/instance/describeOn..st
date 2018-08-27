description
describeOn: conf
	(conf string: #storageFolderName)
		group: 'Reviewnator';
		label: 'Storage folder name';
		comment: 'Name of the folder to store reviewnator files';
		default: 'reviewnator'.
	(conf string: #adminAccessCode)
		group: 'Reviewnator';
		label: 'Access for the admin';
		comment: 'Access code that will provide access to the admin functionality';
		default: 'admin'