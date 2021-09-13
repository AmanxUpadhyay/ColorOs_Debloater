@echo off
title ColorOs De-bloater made by Aman Upadhyay
@echo,
echo ----------- Finding Connected ADB Devices -----------

@echo off
:check_adb_device
FOR /F %%c in ('adb devices') do set device=%%c
    IF "%device%" == "List" (
        echo ---------------------------------------------
        echo               No devices found!
        echo ---------------------------------------------
        @echo,
        pause
    ) ELSE (
        echo ---------------------------------------------
        echo           Found devices: %device%
        echo ---------------------------------------------
        @echo,
    )
pause

:mainMenu
@echo,
echo ---------------------------------------------
echo    WELCOME TO COLOR OS DE BLOATER By Aman
echo ---------------------------------------------
set /P input="Type 1 to continue: "
IF "%input%"=="1" goto Debloat

goto mainMenu

:Debloat
adb shell pm uninstall -k --user 0 com.coloros.oppopods
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon
adb shell pm uninstall -k --user 0 com.facebook.katana
adb shell pm uninstall -k --user 0 com.google.android.apps.youtube.music
adb shell pm uninstall -k --user 0 com.google.android.apps.docs
adb shell pm uninstall -k --user 0 com.google.android.apps.magazines
adb shell pm uninstall -k --user 0 com.google.android.videos
adb shell pm uninstall -k --user 0 com.android.chrome
adb shell pm uninstall -k --user 0 com.google.android.youtube
adb shell pm uninstall -k --user 0 com.google.android.calendar
adb shell pm uninstall -k --user 0 com.google.android.apps.work.oobconfig
adb shell pm uninstall -k --user 0 com.google.android.keep
adb shell pm uninstall -k --user 0 com.ted.number
adb shell pm uninstall -k --user 0 com.coloros.childrenspace
adb shell pm uninstall -k --user 0 com.oppo.usercenter
adb shell pm uninstall -k --user 0 com.coloros.securitykeyboard
adb shell pm uninstall -k --user 0 com.coloros.backuprestore
adb shell pm uninstall -k --user 0 com.coloros.activation
adb shell pm uninstall -k --user 0 com.oppo.sos
adb shell pm uninstall -k --user 0 com.oppo.operationManual
adb shell pm uninstall -k --user 0 com.heytap.browser
adb shell pm uninstall -k --user 0 com.facebook.system
adb shell pm uninstall -k --user 0 com.facebook.appmanager
adb shell pm uninstall -k --user 0 com.facebook.services
adb shell pm uninstall -k --user 0 com.heytap.cloud
adb shell pm uninstall -k --user 0 com.coloros.musiclink
adb shell pm uninstall -k --user 0 com.coloros.operationtips
adb shell pm uninstall -k --user 0 com.coloros.logkit
adb shell pm uninstall -k --user 0 com.heytap.music
adb shell pm uninstall -k --user 0 com.coloros.video
adb shell pm uninstall -k --user 0 com.redteamobile.roaming
adb shell pm uninstall -k --user 0 com.heytap.market
adb shell pm uninstall -k --user 0 com.heytap.usercenter
adb shell pm uninstall -k --user 0 com.oppo.quicksearchbox
adb shell pm uninstall -k --user 0 com.coloros.compass2
adb shell pm uninstall -k --user 0 com.caf.fmradio
adb shell pm disable-user -k --user 0 com.nearme.gamecenter
adb shell pm uninstall -k --user 0 com.coloros.weather2
adb shell pm uninstall -k --user 0 com.coloros.soundrecorder
adb shell pm uninstall -k --user 0 com.coloros.phonemanager
adb shell pm uninstall -k --user 0 com.heytap.market
adb shell pm uninstall -k --user 0 com.coloros.compass2
adb shell pm uninstall -k -k --user 0 com.nearme.gamecenter
adb shell pm uninstall -k --user 0 com.coloros.assistantscreen

@echo,
echo ------------------------------
echo !*  Successfully Debloated  *!
echo ------------------------------