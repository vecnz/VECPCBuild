VECPCBuild
========
Scripts for Building New VEC PCs

# Pre taking image

## Post Deploy Install Script

After the install, the script located in `%WINDIR%\Setup\Scripts\SetupComplete.cmd` is called. This must be updated before the image is taken and before sysprep. 

## Sysprep

Sysprep is run before the image is taken. This will generalise the image and allow it to generate unique SIDs upon each installation. 

The custom `deploy.xml` file must be called when calling sysprep before taking the image:

```batch
C:\Windows\System32\Sysprep\sysprep.exe /oobe /generalize /unattend:C:\Files\deploy.xml
```

# Taking Image


# Deploying Image 

