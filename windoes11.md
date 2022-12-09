## Old Context Menu

-   Manually
    -   Open Registry Editor
    -   Navigate to `HKEY_CURRENT_USER\Software\Classes\CLSID`
    -   Right-click the folder and select `New > Key`
    -   Assign the name `{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}`
    -   Right-click the new key, and select `New > Key`
    -   Name it `InprocServer32`
    -   Edit the `default` string inside the `InprocServer32` key, and set the data to `empty/null`.
    -   Reboot, and the context-menu should be available.
-   Auto

    -   Create a file with {name}.reg any where then open it with notepad and paste teh bellow code inside it save it and then double click on the file and click yes on all the popup and after that reboot.

    -   ```re
        Windows Registry Editor Version 5.00
        [HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}]

        [HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32]
        @="empty/null"
        ```
