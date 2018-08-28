(IceRepositoryCreator new
   url: 'https://casco@bitbucket.org/casco/reviewnator.git';
   createRepository) updatePackage: 'Reviewnator-PharoExtensions';
   updatePackage: 'Reviewnator-model';
   updatePackage: 'Reviewnator-importers';
   updatePackage: 'Reviewnator-persistence';
   updatePackage: 'Reviewnator-seaside';
   updatePackage: 'Reviewnator-tools';
   updatePackage: 'Reviewnator-deployer'.

(IceRepositoryCreator new
   url: 'https://bitbucket.org/casco/pharo-utilities.git';
   createRepository) updatePackage: 'SeasideDeployer'.