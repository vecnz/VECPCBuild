VECPCBuild
========
Scripts for Building New VEC PCs

PDFs to all websites can be found in the `Printouts` folder. 

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

Create a bootable Clonezilla image using [these](https://clonezilla.org/liveusb.php) instructions.

To take the image follow the instructions [here](https://clonezilla.org/show-live-doc-content.php?topic=clonezilla-live/doc/01_Save_disk_image). All of the default settings can be used. 

# Creating Bootable Media

The instructions to create bootable media can be found [here](https://clonezilla.org/show-live-doc-content.php?topic=clonezilla-live/doc/04_Create_Recovery_Clonezilla). 

From [here](https://clonezilla.org/liveusb.php), follow these instructions to create the all-in-one boot media. 

# Deploying Image 

It takes approximately 10 minutes to deploy a PC image, with 5 minutes required with the USB and 5 minutes with an internet connection. Once Windows has started booting (step 6 below), the USB can be disconnected and then imaging can start on the next PC. 

Follow these steps to deploy the image:
1. Connect the PC to an open internet connection (e.g. at home, or through the VEC router)
2. Turn the PC and immediately press `F11` repeatedly until the boot menu appears
3. Select the Samsung USB Drive
4. Press `Enter` to skip the 30s countdown
5. Press `Y` + `Enter` twice to start imaging
6. Turn the PC on
7. Wait for the Windows Desktop