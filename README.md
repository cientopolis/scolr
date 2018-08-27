# reviewnator

A tool to suport collaborative systematic reviews

#Dependencies

depends on Bootstrap and NeoCSV. Load them from the Pharo6.01 catalog. 

It also depends on BootstrapDeployer in https://bitbucket.org/casco/pharo-utilities

```
(IceRepositoryCreator new
   url: 'https://bitbucket.org/casco/pharo-utilities.git';
   createRepository) updatePackage: 'SeasideDeployer'.
```

To install evaluate this in a playground after dependencies are met:

```
(IceRepositoryCreator new
   url: 'https://casco@bitbucket.org/casco/reviewnator.git';
   createRepository) updatePackage: 'Reviewnator-PharoExtensions';
   createRepository) updatePackage: 'Reviewnator-model';
   createRepository) updatePackage: 'Reviewnator-importers';
   createRepository) updatePackage: 'Reviewnator-persistence';
   createRepository) updatePackage: 'Reviewnator-seaside';
   createRepository) updatePackage: 'Reviewnator-tools';
   createRepository) updatePackage: 'Reviewnator-deployer'.