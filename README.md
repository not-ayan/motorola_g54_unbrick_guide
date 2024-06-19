# The all in one unbrick guide for Motorola G54 5G
>Note:I will assume that you know where to find the da files. This guide is specifically made for motorola g54 5g however (although untested) the download_auth file might work for other mt6855 devices please replace the images with the right ones for your devices along with the right scatter file before trying . I dont take responsibility for anything that happends to your device.

## Pre-requisites:
1) A brick (pun intended)
2) Blankflash (Thanks to shoobee for the files)
3) Firmware:Use country specific firmware 
4) | Windows | Linux |
   | ------- | ----- |
   | [Preloader drivers](https://drive.google.com/file/d/1HTXcYg5OB6oWhr6Fe-DeIXqv7P0olk60/view?usp=sharing) | [SP Flash tool v6](https://spflashtools.com/linux/sp-flash-tool-v6-2124-for-linux) |
   | [Tiny Fastboot script](https://mirrors.lolinet.com/software/windows/TinyFastbootScript/) | [Fastboot flashing script](https://github.com/not-ayan/motorola_g54_unbrick_guide/blob/main/flashfile.sh) |
   | [Fastboot drivers](https://dl.google.com/android/repository/usb_driver_r13-windows.zip) | |
>Additionally all the required files are also present in the repo.

## This guide is divided into two parts:
- Unbrick 
- Flashing firmware

## Unbrick Method:

### Windows users
1) Download all the required files ,extract them & put them in the same folder (so that you dont get confused obviously)
2) Install the drivers (We will install the preloader drivers for now)
- Open the "MTK Preloader drivers" folder 
- Open the "InstallDriver.exe"
- This should install the required driver
3) Lets unbrick!
- Open the "blankflash" folder
- Run the "blank-flash.bat" you might encounter some missing dll issues please use the correct version of the dll (32bit or 64bit) according to your system
- Take your phone , press & hold the volume up , volume down & power buttons together until you see the flashlight blinks (It means that the phone has turned off)
- Plug in your phone
- The flashing will start and after some time you will to boot into fastboot mode.

### Linux users
1) Download Sp flash tool & rest of the files & put them in the same folder (i use arch btw ;-;)
2) Open terminal in the folder where you put all the files & follow along:
```
cd "SP_Flash_Tool_v6.2124_Linux"
export QT_QPA_PLATFORM=xcb 
bash SPFlashToolV6.sh
``` 
3) For the Download-XML select the "blankflash/download_agent/blankflash.xml" file & for the Authentication file select the "blankflash/auth_sv5.auth" file (Check the picture for more details)
4) Lets unbrick: 
![Sp flash tool on linux](/assets/1-linux.png)
- Take your phone , press & hold the volume up , volume down & power buttons together until you see the flashlight blinks (It means that the phone has turned off)
- Plug in your phone
- Press the Download button.


## Flashing firmware

### Windows users
1) Unzip Motorola firmware zip
2) Unzip this tool: Tiny-Fastboot-Script.**.zip, then you can find [flash.bat] and [tools folder].
3) Move [flash.bat] + [tools folder] to firmware's unzipped folder.
![Fastboot option](/assets/fastboot_options.png)
![Flash option](/assets/flash_options.png)
4) Run flash.bat, choose the necessary fastboot option (if you are confused just choose recommended), choose the option you want to use .

### Linux users
1) Unzip Motorola firmware zip
2) Copy the "flashfile.sh" file to the firmware's unzipped folder.
3) Use the following command
```
bash flashfile.sh
```

>If you need help with any errors feel free to contact [me](t.me/not_ayan99) on telegram.
