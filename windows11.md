# Windows tricks

## Old Context Menu

- Manually

  - Open Registry Editor
  - Navigate to `HKEY_CURRENT_USER\Software\Classes\CLSID`
  - Right-click the folder and select `New > Key`
  - Assign the name `{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}`
  - Right-click the new key, and select `New > Key`
  - Name it `InprocServer32`
  - Edit the `default` string inside the `InprocServer32` key, and set the data to `empty/null`.
  - Reboot, and the context-menu should be available.

- Auto

  - Create a file with {name}.reg any where then open it with notepad and paste teh bellow code inside it save it and then double click on the file and click yes on all the popup and after that reboot.

  - ```re
    Windows Registry Editor Version 5.00
    [HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}]

    [HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32]
    @="empty/null"
    ```

## Add to open with in context menu (right click) for any app

- For Adding

  ### Create a add.bat file and pase these code inside and run as Admin

  ```bat
  @echo off

  @REM Change the file location based on your app location
  SET stPath=C:\Program Files\Sublime Text\sublime_text.exe

  @REM Change the open with Sublime Text with the name you want to see for all 12 Places
  @REM for example @reg add "HKEY_CLASSES_ROOT\*\shell\Open with VS Code"         /t REG_SZ /v "" /d "Open with VS Code"   /f

  rem add it for right-clicking all file types
  @reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
  @reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%stPath%,0" /f
  @reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text\command" /t REG_SZ /v "" /d "%stPath% \"%%1\"" /f

  rem add it for right-clicking a folders
  @reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
  @reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%stPath%,0" /f
  @reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text\command" /t REG_SZ /v "" /d "%stPath% \"%%1\"" /f

  rem add it for right-clicking inside folders
  @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text"         /t REG_SZ /v "" /d "Open with Sublime Text"   /f
  @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%stPath%,0" /f
  @reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text\command" /t REG_SZ /v "" /d "%stPath% \"%%W\"" /f
  pause
  ```

- For Deleting

  ### Create a delete.bat file and put these code inside and run as Admin

  ```bat
  @REM Change the open with Sublime Text as you added for your app for all 3 places
  @REM for example @reg delete "HKEY_CLASSES_ROOT\*\shell\Open with VS Code"

  @echo off
  rem for deleting right-clicking all file types
  @reg delete "HKEY_CLASSES_ROOT\*\shell\Open with Sublime Text"

  rem for deleting right-clicking a folders
  @reg delete "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime Text"

  rem for deleting right-clicking inside folders
  @reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Sublime Text
  pause
  ```

- Or you get get the file from [here](https://github.com/Ulrich-Tonmoy/cheat-sheets/blob/main/assets/windows/) open with notepad and modify them

## Make Folder Invisible

- Right click and select rename then `alt + 0160`
- Right click and select properties select customize then change icon and pick a blank icon
