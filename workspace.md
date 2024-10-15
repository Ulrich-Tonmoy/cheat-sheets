# Workspace setup (Windows)

- [Workspace tools](#workspace-tools)
- [VS Code](#vs-code)
- [Neovim](#neovim)
- [Windows](#windows)

# Workspace tools

- [MSSQL](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) - [SSMS](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms) - [Visual Studio](https://visualstudio.microsoft.com/downloads/) - [VS Code](https://code.visualstudio.com/)- [Git](https://git-scm.com/downloads) - [GitHub Desktop](https://github.com/desktop/desktop)
- [Notepad++](https://notepad-plus-plus.org/downloads/) - [Notion](https://www.notion.so/download) - [Obsidian](https://obsidian.md/) - [Logseq](https://logseq.com/)
- [PowerToys](https://github.com/microsoft/PowerToys) - [GitButler](https://github.com/gitbutlerapp/gitbutler) - [UniGetUI](https://github.com/marticliment/WingetUI) - [windirstat](https://windirstat.net/) - [Partition Wizard](https://www.partitionwizard.com/download.html)
- [nvm windows](https://github.com/coreybutler/nvm-windows) - [Python](https://www.python.org/downloads/) - [Rust](https://www.rust-lang.org/tools/install) - [LLVM](https://github.com/llvm/llvm-project/releases) - [Zig](https://ziglang.org/download/) - [Vulkan](https://vulkan.lunarg.com/)
- [Tor](https://www.torproject.org/) - [Firefox](https://www.mozilla.org/en-US/firefox/new/) - [Chrome](https://www.google.com/chrome/) - [Brave](https://brave.com/) - [Opera](https://www.opera.com/) - [Arc](https://arc.net/) - [Zen](https://www.zen-browser.app/) - [Ladybird](https://ladybird.org/) - [Servo](https://servo.org/)
- [Potplayer](https://potplayer.daum.net/) - [VLC media player](https://www.videolan.org/) - [OBS Studio](https://obsproject.com/)

- ## MS 365
- [Office Deployment Tool](https://www.microsoft.com/en-US/download/details.aspx?id=49117) & [Install Office LTSC preview](https://learn.microsoft.com/en-gb/office/ltsc/preview/install-ltsc-preview)
- Download `Office Deployment Tool` extract to a folder by double clicking the exe.
- Remove all xml & create a `configuration.xml` file and paste the bellow:
  ```xml
  <Configuration>
    <Add OfficeClientEdition="64"  Channel="PerpetualVL2024">
      <Product ID="ProPlus2024Volume" PIDKEY="2TDPW-NDQ7G-FMG99-DXQ7M-TX3T2" >
          <Language ID="en-us" />
      <ExcludeApp ID="Access" />
      <ExcludeApp ID="Lync" />
      <ExcludeApp ID="OneDrive" />
      <ExcludeApp ID="OneNote" />
      <ExcludeApp ID="Outlook" />
      <ExcludeApp ID="Publisher" />
      </Product>
    </Add>
    <RemoveMSI />
    <Property Name="AUTOACTIVATE" Value="1" />
  </Configuration>
  ```
- Then run the terminal as admin and run the below command:

  ```properties
  ./setup /configure ./configuration.xml
  ```

- [LibreOffice](https://www.libreoffice.org/) - [WPS](https://www.wps.com/) - [FreeOffice](https://www.freeoffice.com/) - [OfficeSuite](https://officesuite.com/)

- ## Terminal
- [Monaspace](https://monaspace.githubnext.com/) - [JetBrains Mono Fonts](https://www.jetbrains.com/lp/mono/) - [Nerd Fonts](https://www.nerdfonts.com/font-downloads)
- [WSL](https://apps.microsoft.com/detail/windows-subsystem-for-linux/9P9TQF7MRM4R) - [Terminal](https://apps.microsoft.com/detail/windows-terminal/9N0DX20HK701) - [Powershell](https://apps.microsoft.com/detail/powershell/9MZ1SNWT0N5D) - [Oh My Posh](https://ohmyposh.dev/) - [Oh My ZSH](https://ohmyz.sh/)
- [Windows Terminal Themes](https://windowsterminalthemes.dev/) - [Terminal Splash](https://terminalsplash.com/) - [Dracula Theme](https://draculatheme.com/windows-terminal)
- [Starship](https://starship.rs/) - [starship.toml](./assets/workspace/vs-code/terminal/starship.toml) -> `C:\Users\{Name}\.config`

  - For Powershell
    - In the Document folder create a Folder name `PowerShell`.
    - Inside the folder Create a file name `Microsoft.PowerShell_profile.ps1` with `ps1` extension
    - And paste `Invoke-Expression (&starship init powershell)` in the `Microsoft.PowerShell_profile.ps1`
    - PowerShell log data `%APPDATA%\Microsoft\Windows\PowerShell\PSReadline\`

# VS Code

## VS Code Profiles

- [Main Profile](./assets/workspace/vs-code/profiles/Main.code-profile)
- [UI Modded Profile](./assets/workspace/vs-code/profiles/UI-Mod.code-profile)

## VS Code Style

![enter image description here](./assets/workspace/vs-code/thumb.png)

## Instructions

1.  Install vs code extension [Outrun Meets Synthwave](https://marketplace.visualstudio.com/items?itemName=codevars.outrun-meets-synthwave)
2.  Install vs code extension [Bearded Icons](https://marketplace.visualstudio.com/items?itemName=BeardedBear.beardedicons)
3.  Install vs code extension [Custom CSS and JS Loader](https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css)
4.  Download Mononoki and Fira Code from [Nerd Fonts](https://www.nerdfonts.com/font-downloads) (mononki it's the one I use super clean) but if you want ligatures arrows then use Fira Code)
5.  on vs code open up the user settings cmd + p then search for user settings and copy the settings on the settings.json file from this repo ( if you want it exactly like mines paste it at the bottom if you don't want to override your own settings then paste it at the top of file)
6.  Replace the `vscode_custom_css.imports` depending your operative system, and add your user or file location in your VS Code `settings.json`

```js
On Mac:

{
  "vscode_custom_css.imports": [
    "file:///Users/{your username}/.vscode/extensions/codevars.outrun-meets-synthwave-0.0.1/synthWaveStyles.css"
    ]
}

Windows:

{
  "vscode_custom_css.imports": [
    "file:///C:/Users/{your username}/.vscode/extensions/codevars.outrun-meets-synthwave-0.0.1/synthWaveStyles.css"
    ]
}

Linux:
{
    "vscode_custom_css.imports": [
        "file:///home/{your username}/.vscode/extensions/codevars.outrun-meets-synthwave-0.0.1/synthWaveStyles.css"
    ]
}
```

8. Copy and paste the css inside of the [`codingphase-style.css`](./assets/workspace/vs-code/codingphase-style.css) file and replace the styles inside the `synthWaveStyles.css` file

# Creating VS Code Snippets

1. Create a snippet then goto [snippet-generator](https://snippet-generator.app/) and convert your snippet for VS Code.
2. From Setting Icon select `User Snippets` and select whether you want it to be a global or language specific then give a trigger and save it.

# Neovim

## Editor

- [NeoVim](https://neovim.io/)
- [Helix](https://helix-editor.com/)

## Configs

- [NvChad](https://nvchad.com/docs/quickstart/install)
- [AstroNvim](https://astronvim.com/)
- [LunarVim](https://www.lunarvim.org/)
- [SpaceVim](https://spacevim.org/quick-start-guide/)
- [LazyVim](https://www.lazyvim.org/)

### [Vim Tutor (vimschool)](https://vimschool.netlify.app/introduction/)

# Windows

## Check and Toggle Recall

- Open up the Terminal (as Admin) and type in this command
- Check If Recall Is ON : `Dism /Online /Get-Featureinfo /Featurename:Recall`

- Depending on your preference these commands can either ENABLE or DISABLE the software.
- Disable RECALL: `Dism /Online /Disable-Feature /Featurename:Recall`
- Enable RECALL: `Dism /Online /Enable-Feature /Featurename:Recall`

## Old Context Menu In Windows 11

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

## Remove Open With Visual Studio from Context Menu

- Open Registry Editor (Search it in the windows search)
- In the Registry Editor put the bellow link in the nav it will take you to folder name AnyCode just delete the folder
- HKEY_CLASSES_ROOT\Directory\Background\shell\AnyCode
- HKEY_CLASSES_ROOT\Directory\shell\AnyCode

## Clean Run recent lists

- HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU

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

- Or you get get the file from [here](https://github.com/Ulrich-Tonmoy/cheat-sheets/blob/main/assets/workspace/windows/) open with notepad and modify them

## To rename all jpg in a folder to png

- Create a rename.bat file in that folder
- Then open it with notepad and paste the bellow
- `ren *.jpg *.png` and save the file
- Then double click

## Add prefix to all the file name in a folder

- Create a rename.bat file in that folder
- Then open it with notepad and paste the bellow code and save the file
- Then double click

  ```bat
  @echo off
  setlocal enabledelayedexpansion

  set "prefix=prefix_"

  for %%F in (*.*) do (
      set "oldName=%%~nF"
      set "extension=%%~xF"
      set "newName=!prefix!!oldName!!extension!"
      ren "%%F" "!newName!"
  )
  endlocal
  ```

## Make Folder Invisible

- Right click and select rename then `alt + 0160`
- Right click and select properties select customize then change icon and pick a blank icon

## GodMode

Create a new folder on your Windows Desktop (or in any other folder that you might want to have this God Mode icon) and change the name to:
`GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}`

## Run Commnads

- `cleanmgr`
- `%temp%`
- `temp`
- `recent`
- `prefetch`
- `%AppData%`
- `%LocalAppData%`
- `shell:startup`
- `shell:appsfolder`
- `shell:common startup`
- `SystemPropertiesAdvanced` to see windows users list
- `chrome.exe --user-data-dir="c:/ChromeDevSession"`
