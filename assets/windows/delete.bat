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